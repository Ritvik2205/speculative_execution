.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
xor di, ax
cmovnb di, si
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
lea rdx, qword ptr [rbx + rdx + 59]
add cl, -109 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 30
lea rax, qword ptr [rbx + rax + 70]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
setnp sil
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
lea rsi, qword ptr [rax]
adc dl, 37
lea cx, qword ptr [rcx + rax]
cmp dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
