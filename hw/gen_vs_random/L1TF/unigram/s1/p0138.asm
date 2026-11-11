.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bx, 99
add dl, 120 # instrumentation
adc bl, 73
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
add cl, -36
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 47
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
mov eax, ebx
add dl, bl
xor bx, 53
sbb dl, -26
mov al, -101
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
