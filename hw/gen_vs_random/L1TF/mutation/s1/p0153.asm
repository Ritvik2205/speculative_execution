.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
bts edx, ebx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
btc eax, 220
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
xchg cl, dl
or ax, -18131
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
