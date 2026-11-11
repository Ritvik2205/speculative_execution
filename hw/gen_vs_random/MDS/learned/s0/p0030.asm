.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 67
test dl, 25
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 37
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 14
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
adc eax, 12
cmp ax, 98
or rsi, 57
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 93
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
or ebx, eax
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
xor al, -28
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and ax, -22368
cmovnl si, di
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
