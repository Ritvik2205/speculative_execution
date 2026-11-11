.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 96
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
and bl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and cl, 127
and al, -56
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
cmovb ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
bt rax, rcx
jmp .bb_0.1
.bb_0.1:
and bl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
xchg si, ax
and ax, si
and al, 126
jmp .bb_0.3
.bb_0.3:
mov dil, dil
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 53
sub edx, eax
xor rsi, 9
cmovo esi, ecx
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
