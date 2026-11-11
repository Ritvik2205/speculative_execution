.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
or dil, bl
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 36
add al, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
sbb edx, ecx
adc al, bl
lea edx, qword ptr [rdi + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -76
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
xor cl, dil
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rsi
cmovnbe rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
