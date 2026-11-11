.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rax]
and bl, 6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
xor sil, al
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and ebx, 80
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and cl, -71
and al, 16 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and cl, 112 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
btc bx, si
or dil, -78
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
btc bx, si
bt edx, edi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
and cl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
cmovp ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
