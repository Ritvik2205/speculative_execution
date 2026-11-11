.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rax, -1701787862
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
bt ebx, edx
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
cmovnz rdx, rcx
btc bx, 58
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and bl, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
and al, -103
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
bt edx, edi
test sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
