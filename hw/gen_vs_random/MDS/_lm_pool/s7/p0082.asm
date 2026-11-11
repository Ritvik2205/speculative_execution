.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 56
test cl, 91
test sil, dil
or di, 87
and al, dl
not al
and al, 14
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
bt ebx, eax
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
or rbx, -72
and eax, -574348013
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
