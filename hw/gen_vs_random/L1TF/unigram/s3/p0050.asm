.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo bx, di
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sbb edi, 36
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and dil, bl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -6
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add ax, 39
setnbe cl
cmovnbe dx, si
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
test al, -5
and cl, sil
mov cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
