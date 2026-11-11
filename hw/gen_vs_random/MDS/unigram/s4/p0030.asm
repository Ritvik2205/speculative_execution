.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, dl
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
bt ebx, edi
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 43
and sil, 74
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and bl, 68
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
test cl, -86
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
cmovns edx, ecx
and al, dil
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
