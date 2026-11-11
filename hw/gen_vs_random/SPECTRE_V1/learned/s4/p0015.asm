.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
adc al, cl
sub al, -82
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
sub cl, -47
xor al, dl
lea bx, qword ptr [rdx + rsi]
movsx ecx, cl
xor dil, al
lea rcx, qword ptr [rax + rcx + 28]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
