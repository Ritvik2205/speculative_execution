.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 63
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
test bl, 65
test bl, bl
cmovnbe rdi, rax
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
test dl, -119
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 51
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
cmovno rdi, rdi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and sil, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
