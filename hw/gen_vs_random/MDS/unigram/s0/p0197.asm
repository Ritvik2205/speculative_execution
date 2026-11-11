.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
bt ecx, 12
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 96
bt edx, 75
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 96
btr ax, 28
cmovbe dx, si
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor esi, esi
or edx, eax
and bx, -21
or cl, dil
and bl, 56
or sil, dl
and dl, -7
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
cmovnz di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
