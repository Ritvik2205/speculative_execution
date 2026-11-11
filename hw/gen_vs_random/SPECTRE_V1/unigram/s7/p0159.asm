.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -127 # instrumentation
setp bl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
bts ax, 78
mov al, dl
lea ax, qword ptr [rbx + rax + 25]
cmp bx, 94
add al, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 83
js .bb_0.1
jmp .exit_0
.bb_0.1:
not rcx
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
add bl, -15 # instrumentation
movzx ax, bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax], 26
not bl
add rcx, 23
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
