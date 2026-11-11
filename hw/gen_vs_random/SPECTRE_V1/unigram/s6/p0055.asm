.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
and edi, 10
or di, -85
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rsi]
btr cx, 55
inc rax
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
lea cx, qword ptr [rdx + rbx + 12]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
add cl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
add al, -61 # instrumentation
seto al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
