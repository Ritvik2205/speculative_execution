.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
xor ax, -24879
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
adc cl, dl
add cx, 6
and bl, dl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
sub al, cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
xor cx, 113
or cl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
