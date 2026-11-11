.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and bl, sil
cmovp ax, cx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and bl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
xor eax, eax
and ax, 15401
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
xor cl, 93
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
cmovs rdi, rax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
