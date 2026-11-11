.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and cx, di
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
or dil, sil
and sil, bl
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and di, 99
cmovnbe rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
bt dx, si
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
btr rbx, 155
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
or di, 74
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 85
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rcx, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
