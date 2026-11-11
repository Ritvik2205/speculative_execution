.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, dx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
sub dl, al
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
setnb sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
lea di, qword ptr [rcx + rdi + 1965]
cmp rdi, 96
setz cl
lea di, qword ptr [rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rsi], cx
add al, -25 # instrumentation
sbb cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
