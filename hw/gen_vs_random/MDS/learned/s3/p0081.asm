.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 40
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 65
or dil, al
test eax, 1287331633
and al, 14
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
