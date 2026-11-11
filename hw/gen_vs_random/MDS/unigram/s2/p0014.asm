.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -109 # instrumentation
not rdx
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 26
cmovnb rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 70
or sil, -8
and cl, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xor edi, 38
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
or rcx, 77
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and ax, 15401
and di, 21
and bl, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
or al, cl
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
