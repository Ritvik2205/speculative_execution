.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
imul ax
add al, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
add sil, sil
btc si, dx
inc dl
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 84
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add bl, -125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
neg al
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
