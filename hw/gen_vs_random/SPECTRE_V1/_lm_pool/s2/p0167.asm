.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
sub eax, -911655926
sub cl, -21
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -65
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
cmp cl, sil
xor cl, -40
jl .bb_0.4
jmp .exit_0
.bb_0.4:
or dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
