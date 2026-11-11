.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 35
test al, 34
sbb bl, -41
lea si, qword ptr [rsi + rax]
lea bx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
sub cl, bl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
and ax, -13240
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
