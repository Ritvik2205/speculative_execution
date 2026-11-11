.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
imul dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
setz dl
and sil, 111
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
test bl, -8
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
sbb al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
