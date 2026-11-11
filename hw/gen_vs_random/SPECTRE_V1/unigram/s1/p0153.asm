.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, -81
setbe dl
add dl, -16 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 54
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 54
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
cmovbe esi, edx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
setnle dl
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
