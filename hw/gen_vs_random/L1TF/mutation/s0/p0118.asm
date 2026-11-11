.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
lea esi, qword ptr [rcx]
adc eax, -1211718481
cmovno dx, dx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 90
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add cl, -84 # instrumentation
xchg rdx, rsi
cmovnl dx, si
btc ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
imul rax, rax, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
