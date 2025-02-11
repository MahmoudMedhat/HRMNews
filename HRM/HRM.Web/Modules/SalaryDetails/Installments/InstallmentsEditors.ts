﻿/// <reference path="../../common/helpers/grideditorbase.ts" />
namespace HRM.SalaryDetails {
    @Serenity.Decorators.registerClass()
    export class InstallmentsEditors extends Common.GridEditorBase<InstallmentsRow> {
        protected getColumnsKey() { return "SalaryDetails.Installments"; }
        protected getDialogType() { return SubInstallmentsDialog; }
        //protected getIdProperty() { return AllowancesRow.idProperty; }
        protected getLocalTextPrefix() { return InstallmentsRow.localTextPrefix; }

        constructor(container: JQuery) {
            super(container);

        }


        //protected getButtons()/*: Serenity.ToolButton[]*/ {
        //    var buttons = super.getButtons();         
        //    buttons.splice(Q.indexOf(buttons, x => x.cssClass == "add-button"), 1);
        //   return buttons;
        //}



    }
}