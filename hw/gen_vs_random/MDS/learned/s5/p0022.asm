.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, 8
xor sil, -15
test al, -7
or al, 30
test edx, -372470678
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
xor cl, 24
jmp .bb_0.1
.bb_0.1:
or al, bl
xor bl, sil
test rdi, 4
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
