.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts si, 80
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
add dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
cmovs bx, si
xor ax, dx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
imul di, ax
bswap rcx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
bts bx, bx
lea rdi, qword ptr [rsi + rdx]
lea eax, qword ptr [rdi + rdi]
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
