.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rsi], di
xor cx, 75
add cl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
add al, cl
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 100
add cx, 47
add bl, 112 # instrumentation
setnbe bl
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rbx]
add bl, -41 # instrumentation
xchg sil, dl
mov bl, dl
test edi, 44
xchg al, bl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
sub eax, ebx
bswap rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
