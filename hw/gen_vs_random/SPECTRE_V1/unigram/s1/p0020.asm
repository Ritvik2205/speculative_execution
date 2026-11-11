.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
xor al, bl
and rdx, -98
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
and rax, 1713273566
imul si, ax, 48
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea ecx, qword ptr [rsi + rbx]
xor ax, 913
bts rax, rcx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
lea ax, qword ptr [rax]
lea edx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
xor di, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
