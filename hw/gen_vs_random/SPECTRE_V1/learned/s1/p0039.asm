.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, ebx
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
adc al, -82
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rdx]
or cl, al
and dl, cl
and ax, -13240
add dil, bl
xor al, -42
xor ax, 913
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
