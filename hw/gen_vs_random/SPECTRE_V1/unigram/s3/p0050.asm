.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, 27
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
add bl, 7 # instrumentation
cmovnl edx, eax
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
cmovs cx, di
add cl, 97 # instrumentation
adc dx, si
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 84
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
sub cl, 29
sub bl, 100
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 10
xchg esi, edx
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
