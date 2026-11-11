.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
lea cx, qword ptr [rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 35
or edi, 34
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 90
jmp .bb_0.2
.bb_0.2:
imul rbx
jmp .bb_0.3
.bb_0.3:
xor cx, 113
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
