.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rsi, 85
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 82
xor edi, 45
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
or cl, al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
mov bx, 8
xor ax, -2537
cmovnbe edi, eax
test sil, -101
sub sil, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
