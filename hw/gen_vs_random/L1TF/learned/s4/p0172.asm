.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
btc rdi, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi], 81
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and bl, dil
btc ax, si
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
add al, al
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 41
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
