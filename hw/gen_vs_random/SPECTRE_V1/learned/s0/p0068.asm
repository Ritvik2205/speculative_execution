.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
lea ecx, qword ptr [rdx]
add dil, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
lea rdi, qword ptr [rbx + rsi + 29]
cmp ecx, 83
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 99
add al, -13
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
