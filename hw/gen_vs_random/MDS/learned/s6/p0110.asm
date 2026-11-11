.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -88
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
jmp .bb_0.1
.bb_0.1:
or dil, -76
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
or dl, sil
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
xor dil, al
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and cx, -2
cmp al, sil
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
