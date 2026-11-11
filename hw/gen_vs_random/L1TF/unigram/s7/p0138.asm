.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdx]
add bl, 3 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
or rsi, 18
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
btc esi, ebx
cmovbe eax, edi
sub rdi, rax
test sil, dl
sub rsi, 52
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
adc edi, 117
cmp cx, 77
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
