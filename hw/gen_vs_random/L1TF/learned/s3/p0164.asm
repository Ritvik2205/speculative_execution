.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
cmovb cx, si
cmp sil, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
sbb ecx, 21
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
setp sil
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
