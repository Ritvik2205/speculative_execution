.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and bl, dil
movsx ebx, bl
xor al, bl
lea cx, qword ptr [rsi + rax + 89]
setnl dl
cmp eax, -563371897
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, -65
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 15
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
lea edi, qword ptr [rax + rbx]
nop
test bl, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 11
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
