.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
btr si, cx
lea edi, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
sbb dx, ax
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
xor al, 16
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
cmp al, 56
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 36
lea rdi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
