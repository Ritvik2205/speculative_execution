.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul al
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 82
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 78
test sil, -101
add cl, 56 # instrumentation
cmovns edi, ecx
xor cx, 78
cmovle rdi, rax
and rax, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
movsx si, dl
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
cmp al, dil
add cl, 29 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -119
imul al
cmovno ecx, ebx
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
