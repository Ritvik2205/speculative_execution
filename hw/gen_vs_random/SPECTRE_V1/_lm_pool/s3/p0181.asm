.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and cx, 10
test dl, -105
xor dl, bl
lea ecx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
