.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
cmp dil, bl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rcx
mov dil, dl
lea esi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
