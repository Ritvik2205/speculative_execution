.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
cmp dil, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
not si
test dil, 49
and si, 94
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
not dl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 4
and rdi, -60
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
cmovz esi, edx
not cl
cmp rax, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
