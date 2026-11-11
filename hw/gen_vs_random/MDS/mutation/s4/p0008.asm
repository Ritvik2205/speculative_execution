.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rcx
bts rbx, rax
btr edx, esi
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and cl, -128 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
cmovnle cx, si
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
or al, al
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and cl, 114 # instrumentation
cmovz dx, si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
btr ebx, 0
cmovz si, di
cmovo dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
