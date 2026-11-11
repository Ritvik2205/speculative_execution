.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, bl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], 15
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
bts rdi, rbx
sub cl, -49
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
add rbx, 99
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and cx, cx
add dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
sbb dx, 54
cwde
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
