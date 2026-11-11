.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], ax
or al, 19
sub sil, al
inc al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdx]
add al, 18
lea bx, qword ptr [rdx + rdi]
cmp dil, -78
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 91
cmp ax, 7452
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
