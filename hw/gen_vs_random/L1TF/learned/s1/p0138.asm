.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, ax
dec sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 55
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
test rdx, rdi
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
test eax, 899472326
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
xor ax, 27703
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
