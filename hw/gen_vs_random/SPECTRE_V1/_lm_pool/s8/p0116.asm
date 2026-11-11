.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 99
lea edi, qword ptr [rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea si, qword ptr [rbx + rdx]
xchg edi, ebx
cmp bl, al
and al, -23
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
