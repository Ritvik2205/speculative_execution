.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 121 # instrumentation
setnb bl
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
cmovnz bx, dx
cmp sil, sil
test cx, di
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
jmp .bb_0.1
.bb_0.1:
bswap rbx
add bl, 68
bt rdi, rbx
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
xor si, cx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
dec edi
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
