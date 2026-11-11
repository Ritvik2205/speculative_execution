.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
not ax
cmovb rax, rcx
and al, 33 # instrumentation
cmovnle esi, edi
cmovb esi, ecx
or al, -8
and al, -64 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
test al, 74
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 86
jmp .bb_0.1
.bb_0.1:
cmovs rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -23
test dl, sil
test dil, -67
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
cmovns ecx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdx]
test cl, dil
cmovs ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
