.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
or al, -24
xor bl, -102
xor al, 115
test dl, 27
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
btc dx, 146
jmp .bb_0.2
.bb_0.2:
test al, bl
btr cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
