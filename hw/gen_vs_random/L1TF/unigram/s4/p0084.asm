.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dil
lea bx, qword ptr [rdi + rdx + 58]
lea rax, qword ptr [rbx + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 76
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
movsx rbx, cl
mov rcx, 96
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
lea dx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
add cl, -110 # instrumentation
setbe bl
cmovl rcx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
add cl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
