.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], si
xor bl, -5
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
mov dl, 89
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
cmovl rcx, rdi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
add al, al
add cl, 89 # instrumentation
adc dl, al
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
lea rdi, qword ptr [rbx + rsi + 20302]
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
btr edi, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
