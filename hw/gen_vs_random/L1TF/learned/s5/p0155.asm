.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and dx, 69
lea rdi, qword ptr [rsi + rbx + 82]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
lea rax, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
adc dil, cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 45
sbb al, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
