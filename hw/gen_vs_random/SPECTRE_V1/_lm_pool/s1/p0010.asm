.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ebx
add al, -47
test bl, -8
add al, sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
cmp ax, 7452
cmp rax, 1189904463
lea cx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
