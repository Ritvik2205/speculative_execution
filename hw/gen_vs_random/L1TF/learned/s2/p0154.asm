.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
test edx, -541774418
or al, -2
xor dl, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
test rax, rbx
adc cl, -34
lea rdx, qword ptr [rsi]
jmp .bb_0.2
.bb_0.2:
xor eax, -2123070438
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
