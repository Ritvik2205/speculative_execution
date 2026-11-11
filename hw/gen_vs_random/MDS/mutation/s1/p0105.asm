.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, edx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
and cl, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
cmovnp eax, esi
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
bts rdi, rcx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
and cx, bx
or al, sil
cmovz rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
bt edx, edi
xor bl, cl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnl esi, esi
test al, bl
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
or rdx, rax
not dil
cmovbe ebx, esi
or bl, al
btc bx, 58
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and bl, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
and al, 106
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
