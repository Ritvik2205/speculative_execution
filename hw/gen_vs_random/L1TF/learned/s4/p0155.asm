.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add dx, bx
add cl, 19
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
setbe cl
mov bl, bl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 0
inc sil
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
btc rcx, 81
cmp al, sil
cmovle di, di
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
