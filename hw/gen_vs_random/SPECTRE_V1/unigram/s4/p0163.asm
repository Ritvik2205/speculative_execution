.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rsi, 8418490294875847673
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
lea rbx, qword ptr [rax]
xchg dil, dil
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 78
cmovno ecx, esi
cmovb edx, edx
cmovno rbx, rax
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 56
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add ebx, edi
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 88
add cl, 22 # instrumentation
cmovns rdi, rax
cmovl ecx, eax
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
adc al, 54
lea rax, qword ptr [rax + rdx + 1]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
