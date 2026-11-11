.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
sub bl, dl
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and dil, -93
add dil, cl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
sbb sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
