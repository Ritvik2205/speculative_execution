.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and bl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
cmovns di, dx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 18
test dl, 25
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
or ax, 6575
xor al, al
or sil, -8
cmovbe bx, bx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
cmovs rsi, rax
bts eax, esi
and bl, dl
and ax, 30884
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
