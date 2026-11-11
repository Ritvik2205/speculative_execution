.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 74
mov si, cx
xor al, 14
lea dx, qword ptr [rbx + rcx + 76]
lea rax, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 22
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
bswap rcx
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
not sil
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 51
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
