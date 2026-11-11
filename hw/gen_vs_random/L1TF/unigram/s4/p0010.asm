.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
cmovnl dx, dx
movsx ebx, bl
sub ecx, 12
sbb ax, 67
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmp ecx, 35
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
imul ax
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
cmovnle edx, esi
lea rsi, qword ptr [rax + rdx + 19]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
