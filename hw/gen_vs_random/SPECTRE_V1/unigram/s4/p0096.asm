.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rdi, rdi
cmovnbe ax, ax
adc al, bl
add bl, 106 # instrumentation
cmovs ecx, esi
movsx rax, dl
xor eax, 1034314125
cmp dl, al
and rdi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, 27
sets cl
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 22
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
lea ecx, qword ptr [rdx + rbx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 21
adc si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
