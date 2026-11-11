.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
cmovnb si, dx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rax], di
xor bl, 2
and al, -64 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
cmovns edi, edi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
cmovno eax, ebx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
cmovp rbx, rdx
or dl, cl
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
cmovnz rdx, rbx
cmovnb esi, esi
cmovs eax, eax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 72
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rsi]
xor bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
