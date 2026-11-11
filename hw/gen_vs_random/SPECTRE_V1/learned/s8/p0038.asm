.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
sub al, cl
sub dil, -32
sub al, sil
lea rax, qword ptr [rdx + rbx + 34]
sub cl, -47
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 12
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp eax, 100
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .exit_0
.bb_0.3:
test al, 84
sub rax, -1628299544
lea rax, qword ptr [rsi]
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
