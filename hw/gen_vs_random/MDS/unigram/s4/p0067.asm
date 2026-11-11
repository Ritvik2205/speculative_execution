.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs edi, ecx
bts rsi, 89
btc rax, 87
and bl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor sil, sil
or dl, sil
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 24
cmovnb rdi, rsi
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
and sil, -94
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 30
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
