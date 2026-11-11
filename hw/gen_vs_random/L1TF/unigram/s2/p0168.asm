.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc edx, 29
add dil, dil
lea ecx, qword ptr [rbx + rdx]
add sil, 115 # instrumentation
lea ecx, qword ptr [rcx + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
or bl, -5
or sil, -44
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 20
add dl, cl
jmp .bb_0.1
.bb_0.1:
test edi, 19
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
sbb bl, cl
add dl, 28 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
