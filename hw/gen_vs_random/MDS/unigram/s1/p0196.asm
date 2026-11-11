.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 75
cmovo ecx, eax
and bl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and cl, -108 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
btc edi, 230
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
cmovs ax, si
test rbx, 52
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
and esi, 73
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
and rcx, -63
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
cmovnbe rsi, rsi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and cl, al
and dl, al
and ebx, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
