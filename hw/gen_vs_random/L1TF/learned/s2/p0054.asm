.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 45
add bl, 68
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
or bl, -88
sbb al, -23
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 36
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
adc bl, 86
lea rcx, qword ptr [rax + rdx]
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
