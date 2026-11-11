.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
or dl, cl
cwd
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
imul rax, rsi, 70
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
cmp si, 16
cmovno ax, ax
cmovnl eax, ecx
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], esi
mov rax, -6437636498926413678
add cl, 84 # instrumentation
btc cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
