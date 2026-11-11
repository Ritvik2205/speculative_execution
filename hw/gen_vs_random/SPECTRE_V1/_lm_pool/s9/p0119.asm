.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
test bl, al
lea rbx, qword ptr [rsi + rdx + 43294]
and rdx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rdx]
mov sil, 41
lea ax, qword ptr [rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rax + rsi]
lea dx, qword ptr [rcx + rsi + 4]
lea rax, qword ptr [rsi]
sub al, -66
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
