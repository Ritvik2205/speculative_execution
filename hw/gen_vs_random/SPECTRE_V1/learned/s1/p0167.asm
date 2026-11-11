.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 97
cmovnle rax, rdx
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
xor ax, 913
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, dl
sbb bl, bl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 35
sub cl, -47
btc ax, 41
sub rax, -1628299544
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
