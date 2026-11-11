.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
or sil, -27
movsx rdi, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
lea si, qword ptr [rbx + rsi]
inc al
add bl, 26 # instrumentation
sbb al, cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
setnl dil
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
add cl, -127 # instrumentation
movzx ecx, sil
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
cmovnle rcx, rcx
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
