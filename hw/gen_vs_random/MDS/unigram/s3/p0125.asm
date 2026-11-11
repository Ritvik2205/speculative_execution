.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
bt ecx, 29
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
test rdx, rcx
bt ecx, edi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
or dl, dl
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 24
and edx, -44
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 20
or rax, 1020005579
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and al, -97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
xor rdx, -59
and dl, 120 # instrumentation
cmovnz esi, eax
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
