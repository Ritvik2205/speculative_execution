.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 1
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
cmovns rbx, rdx
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
and al, sil
test rdx, 59
bt edi, 17
cmovl edi, esi
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and cl, 9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
test ebx, -2015966884
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
cmovns rsi, rdx
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
cmovns eax, edx
test al, dl
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
