.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
test al, 59
cmp al, dl
lea ax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 20
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
lea eax, qword ptr [rbx]
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
