.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
bt edx, ebx
lea ecx, qword ptr [rdx + rax]
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rsi
test cl, -62
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or si, si
lea eax, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and cl, 86
and dil, bl
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
lea rcx, qword ptr [rdi + rdi]
add dl, 6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
