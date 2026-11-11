.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
cmovl esi, edi
btr rax, 29
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rsi
jmp .bb_0.1
.bb_0.1:
or al, al
xor bl, 67
and dl, 125 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
not rdi
and sil, -116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
xor al, sil
and dl, 18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
