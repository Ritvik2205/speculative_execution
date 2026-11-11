.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
sbb ax, -26881
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
lea ebx, qword ptr [rbx]
and cl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
cmovnp edi, edx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edi
sbb dil, sil
and dl, bl
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
sbb al, 32
add dl, -124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
cmovb ecx, edx
imul esi, ecx
xor cl, dil
sbb al, -62
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 3
cmovnbe dx, di
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
