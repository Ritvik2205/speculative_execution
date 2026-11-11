.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
test rsi, -1408527332
and dil, -114
jns .bb_0.1
jmp .exit_0
.bb_0.1:
setnb al
sbb cl, 105
cmovs ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rdx, -98
xor al, sil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
sub al, al
cmp rsi, 53
lea rdx, qword ptr [rbx + rbx + 98]
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
add dil, -101 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
