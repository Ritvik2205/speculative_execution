.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
cmovnp rsi, rbx
xor di, -83
and dl, 120 # instrumentation
cmovnz esi, eax
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
or rbx, rdi
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
test eax, ebx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
test eax, 158941032
test rax, rdi
xor bl, al
xor dl, -59
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
or ax, -6817
xor bl, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
