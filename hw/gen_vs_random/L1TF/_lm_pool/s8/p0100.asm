.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 28
xor al, 89
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 48
jmp .bb_0.1
.bb_0.1:
add cl, 65 # instrumentation
cmovo rcx, rdi
adc sil, 83
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rdx]
jmp .bb_0.3
.bb_0.3:
add bl, 68
lea ax, qword ptr [rdi + rbx + 8]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
test al, cl
sub rdx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
