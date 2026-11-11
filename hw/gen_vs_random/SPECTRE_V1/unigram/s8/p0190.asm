.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rsi + rax + 9]
add al, -53 # instrumentation
sbb bl, cl
lea bx, qword ptr [rbx]
setnl cl
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rax]
cmovz dx, dx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rsi + rsi + 27]
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
cmovz ebx, eax
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
test cx, -17886
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
cmovnz bx, di
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 37
setnb sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
