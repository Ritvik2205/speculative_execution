.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
inc al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and sil, -55
or dl, bl
sub dil, -32
cmovnz rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
setbe dil
lea di, qword ptr [rax]
sbb ecx, 26
sbb edi, 71
jno .bb_0.3
jmp .bb_0.4
.bb_0.3:
jns .bb_0.4
jmp .exit_0
.bb_0.4:
add al, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
