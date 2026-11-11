.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
sbb bl, -41
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 4
xor dil, dl
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
sub rsi, 97
and rax, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rax]
add al, al
test eax, 88788211
lea rbx, qword ptr [rcx]
lea rdi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
