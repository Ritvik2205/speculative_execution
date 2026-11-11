.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 77
adc al, bl
sub al, 26
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 34
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and cl, 10
btr si, 28
jmp .bb_0.2
.bb_0.2:
add al, -46
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
