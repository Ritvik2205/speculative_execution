.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and al, 33
sub cl, -21
adc eax, 34
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
lea di, qword ptr [rsi + rax + 63231]
or ax, -114
xor al, -42
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
