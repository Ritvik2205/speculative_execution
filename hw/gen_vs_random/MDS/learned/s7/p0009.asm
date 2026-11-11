.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
xor dl, al
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
or sil, -78
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and eax, -85386306
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and sil, cl
jmp .bb_0.1
.bb_0.1:
and edi, 23
test cl, al
and al, 87
test ebx, -2015966884
or bl, cl
and rax, -731384280
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
