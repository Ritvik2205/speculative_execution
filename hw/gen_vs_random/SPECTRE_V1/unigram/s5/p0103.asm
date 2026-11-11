.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
cmovbe bx, cx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
add cl, 44 # instrumentation
cmovz eax, ecx
sbb ebx, edx
and al, al
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
mov ecx, 77
sub al, al
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rcx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
