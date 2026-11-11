.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edi
cmovno ax, si
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
sbb cl, 105
add edi, -91
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -54
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
