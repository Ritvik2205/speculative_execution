.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
xor rsi, rbx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
cmp al, dl
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 31
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 62
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
neg ecx
xchg cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
