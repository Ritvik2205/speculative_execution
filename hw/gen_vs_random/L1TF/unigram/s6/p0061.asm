.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rdx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
imul rax, rbx
xchg ax, di
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
add cl, 44 # instrumentation
cmovns ax, dx
add dl, -53 # instrumentation
dec si
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], si
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
and sil, sil
test dx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
