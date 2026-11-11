.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -84
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 60
add dl, bl
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub rdi, 37
and di, 100
or cl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
