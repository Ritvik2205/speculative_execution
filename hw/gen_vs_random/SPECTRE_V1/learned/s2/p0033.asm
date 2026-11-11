.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
add al, -109
and al, cl
sub al, bl
sbb eax, 1392087754
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dx, -23
dec al
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdx], ax
test al, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
