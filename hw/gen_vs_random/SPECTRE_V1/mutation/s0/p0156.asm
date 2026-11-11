.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
adc cl, al
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 95
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, dl
xor rax, 1636804787
cmovnb bx, si
mov bl, bl
adc sil, -115
xor si, 23
and rsi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rsi]
lea si, qword ptr [rcx + rbx + 46193]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
add cl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
