.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
bt dx, si
or rsi, 98
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
bts rdi, 130
bt ebx, esi
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
not rcx
cmovb rax, rax
and rax, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rax]
and rbx, 65
btc ax, si
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 5
cmovnb rdx, rcx
test si, 93
and al, sil
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
cmovbe cx, di
bts rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
