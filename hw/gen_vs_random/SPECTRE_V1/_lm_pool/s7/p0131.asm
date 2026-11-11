.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc eax
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
test al, 40
add al, dl
or dil, 80
cmp rcx, 4
jmp .bb_0.2
.bb_0.2:
sub cl, -47
cmp dl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
