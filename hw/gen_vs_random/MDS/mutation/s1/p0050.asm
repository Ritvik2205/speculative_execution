.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
test eax, ebx
test rax, rdi
or ax, -6817
xor bl, -27
xor di, 93
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
and dl, 120 # instrumentation
cmovnz esi, eax
cmovnp rsi, rbx
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
or rbx, rdi
xor dl, 8
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
xor bl, al
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
test eax, 298249463
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
