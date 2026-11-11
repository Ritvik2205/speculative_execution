.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
add rax, 324518812
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 37
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -29 # instrumentation
lea rax, qword ptr [rdx + rdx + 58362]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
add cl, -5 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, -29 # instrumentation
lea rdi, qword ptr [rdx + rdx + 49]
cmovb dx, dx
cmovle rax, rdx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1272979430
not rdi
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
or bl, cl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
xchg rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
