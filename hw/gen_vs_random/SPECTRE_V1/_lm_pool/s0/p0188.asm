.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -72
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
adc al, -82
add dl, 110 # instrumentation
cmovb rcx, rdx
add edx, 41
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
and cx, 90
and dil, dil
sbb ecx, 49
adc al, -92
sub rax, -1628299544
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
test sil, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
