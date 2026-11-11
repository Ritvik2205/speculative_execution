.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
sub al, dl
cmp cx, 19
cmovnp rax, rdx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
sbb bl, 79
test sil, 13
add bl, -104 # instrumentation
lea rbx, qword ptr [rdi + rax + 43013]
lea cx, qword ptr [rdx + rsi + 7]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
add bl, dil
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
setbe dl
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
