.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and bl, 98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
or sil, -78
cmovns di, ax
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
xor rax, -843636050
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
cmovnle edx, ebx
cmovz dx, dx
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
or dl, sil
or sil, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and al, 67 # instrumentation
cmovl rdi, rsi
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
