.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
xor bl, dil
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdx
adc eax, 56
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
bt edx, ebx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
add al, -13
btr di, cx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
setb dl
cmovnp rdx, rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
mov cl, dl
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
