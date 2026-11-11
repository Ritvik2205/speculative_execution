.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
sub dl, al
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 9
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
adc dil, dl
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
cmp dil, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
