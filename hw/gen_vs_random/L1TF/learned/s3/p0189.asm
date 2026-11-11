.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], -105
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -77
test edx, eax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
lea rax, qword ptr [rcx + rdx + 16]
and bl, 125
xor al, -127
cmovnbe rbx, rbx
btc rsi, 55
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 5
test bx, bx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
xor dl, bl
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
