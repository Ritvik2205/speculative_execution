.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 16
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 95
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
inc al
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
lea si, qword ptr [rax + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, 114
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
test al, 70
lea cx, qword ptr [rdi + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 64
add dl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
