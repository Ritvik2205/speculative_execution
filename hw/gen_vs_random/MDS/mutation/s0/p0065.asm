.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
xor bl, -27
test eax, -1634766116
test eax, ebx
or rbx, rdi
xor dl, -19
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
xor di, 40
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
test rax, rdi
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
or ax, -11837
and dl, 120 # instrumentation
cmovnz esi, eax
cmovnp rsi, rbx
xor bl, al
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
