.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
cmovnz di, bx
and dl, al
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
cmovns ecx, ecx
or al, -8
or sil, dil
cmovp rcx, rsi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 15
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdx
btc rcx, 76
and al, -105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 94
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 23
and dl, -33 # instrumentation
cmovns rax, rax
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdi
and bl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
and dl, -73 # instrumentation
cmovns rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
