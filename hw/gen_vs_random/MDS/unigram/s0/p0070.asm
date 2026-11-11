.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 93
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 17
cmovb edx, edi
and sil, -115 # instrumentation
cmovl ax, si
or eax, -1642752131
cmovo dx, dx
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
test rax, 1732677821
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 90
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdi
and al, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
cmovns edi, edi
bt esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
