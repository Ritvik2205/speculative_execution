.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb cx, si
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
lea bx, qword ptr [rbx]
sbb edi, 78
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, -114
add bl, 28 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
xor bl, -38
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
adc sil, -77
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
sub al, cl
cmovb rcx, rsi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
