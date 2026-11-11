.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rsi]
xchg rdi, rdi
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
xor al, -64
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edi
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 34
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe ax, ax
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
cmovnl rax, rbx
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 11
lea rsi, qword ptr [rax + rdi + 52]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
sub eax, -518999763
test edx, 1380346728
bt cx, 24
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
