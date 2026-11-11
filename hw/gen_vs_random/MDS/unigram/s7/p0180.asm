.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
or dl, 85
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
and cl, 118 # instrumentation
cmovp eax, esi
test ax, si
cmovo esi, eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
bts rax, 77
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
btc si, 43
cmovo rsi, rdi
and dl, al
cmovnle ecx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
