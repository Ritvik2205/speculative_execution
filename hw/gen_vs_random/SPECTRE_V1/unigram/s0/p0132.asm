.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, al
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
not bx
and cl, 86
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 29
adc sil, dl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
cmovb esi, ebx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 63
and al, dil
imul cx
bswap rdx
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rax
xor ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
