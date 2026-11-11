.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
mov cl, bl
xor dl, dil
jmp .bb_0.1
.bb_0.1:
test bl, 84
xor dl, bl
sub al, sil
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
sub rax, -1628299544
sub al, cl
cmovle rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
