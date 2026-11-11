.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 22
lea bx, qword ptr [rax]
and bl, 125
and bl, dl
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 71
cmovo di, dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
add al, 64 # instrumentation
cmovnl rsi, rbx
btc rcx, 81
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and bl, 125
and esi, 97
xor al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
