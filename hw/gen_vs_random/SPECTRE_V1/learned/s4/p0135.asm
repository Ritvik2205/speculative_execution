.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
sbb bl, dl
or al, 100
test bl, -8
lea eax, qword ptr [rcx]
add sil, dl
xor cl, sil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and bl, -65
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
