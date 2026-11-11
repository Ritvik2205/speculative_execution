.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx eax, dil
adc dil, dl
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], cl
add bl, 56 # instrumentation
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
bswap rdx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rcx
add al, 19 # instrumentation
setnz dil
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
imul esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
