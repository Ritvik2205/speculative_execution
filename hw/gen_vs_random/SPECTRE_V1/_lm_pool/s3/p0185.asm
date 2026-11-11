.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sub cl, al
cmp dx, 80
sub dil, -32
lea dx, qword ptr [rsi + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
add dil, -75
sub dil, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
