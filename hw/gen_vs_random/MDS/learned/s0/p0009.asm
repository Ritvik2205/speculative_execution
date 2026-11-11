.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 40
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
test cl, -123
and cl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or cx, 49
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
or al, -17
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
test edx, -372470678
xor rax, -843636050
xor bl, -27
test cl, 62
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
jmp .bb_0.2
.bb_0.2:
xor dl, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
