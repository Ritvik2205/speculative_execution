.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, 191
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 57
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
setnl cl
movzx eax, dil
jmp .bb_0.1
.bb_0.1:
mov cl, bl
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
movzx di, al
add dx, di
add al, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
cmovp dx, si
add bl, -53 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
