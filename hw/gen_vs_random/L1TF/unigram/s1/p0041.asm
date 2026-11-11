.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rsi, rcx
bswap rsi
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 66
xor al, dl
sub sil, -99
test edx, 1891691791
and rbx, -88
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
inc ecx
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
cmp dl, sil
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
sub rdx, rcx
add cx, cx
sbb ecx, 1
add edx, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
