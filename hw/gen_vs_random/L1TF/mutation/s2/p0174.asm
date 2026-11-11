.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
xor eax, -69
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
cmovns rsi, rsi
lea dx, qword ptr [rsi + rsi + 6302]
jmp .bb_0.1
.bb_0.1:
add dl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
sub dl, 105
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
dec ecx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
bswap rcx
bts cx, 176
cmp dl, -93
inc eax
mov bl, bl
add bl, cl
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
neg ebx
add ax, -10746
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
