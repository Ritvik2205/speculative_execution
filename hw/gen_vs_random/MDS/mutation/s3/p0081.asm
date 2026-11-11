.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
xor bl, al
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and dl, 120 # instrumentation
cmovnz esi, eax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
test eax, -1634766116
xor dl, -59
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
xor bl, -102
or rbx, rdi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
test eax, ebx
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
xor di, 40
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
test rax, rdi
or ax, 127
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
cmovnp rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
