.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 73
cmovle rbx, rdi
movsx cx, al
add cl, 72 # instrumentation
cmovnl di, bx
xor dl, dl
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
lea ecx, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 38
cmovle edi, esi
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
lea rdx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
