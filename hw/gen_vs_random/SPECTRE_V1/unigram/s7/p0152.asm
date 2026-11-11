.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, sil
xchg edi, edx
movzx bx, dl
cmovp si, cx
cmp cl, bl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
or ax, -114
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
lea rdx, qword ptr [rsi + rdx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdi], cx
adc al, -92
or ax, ax
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
movzx cx, sil
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
