.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 31969
or bl, cl
xor rsi, -117
and rcx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and sil, sil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and al, dil
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and al, -11 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and bl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
or eax, -900576213
btc cx, 115
cmovnbe rax, rbx
xor al, sil
cmovnz ebx, edx
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
or edi, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
