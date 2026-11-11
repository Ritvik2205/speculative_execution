.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, 37
bts ax, 22
bt edx, ebx
and al, al
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
cmovbe ecx, edi
btc cx, 115
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and bl, 38 # instrumentation
cmovno rbx, rsi
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
