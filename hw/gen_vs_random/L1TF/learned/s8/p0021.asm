.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
xor rsi, 88
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
test dil, -126
jmp .bb_0.1
.bb_0.1:
and cx, -79
add al, cl
and cl, 93
and dil, dil
test cl, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
