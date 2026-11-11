.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, rdi
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
test eax, 1287331633
cmovnp rsi, rbx
or ax, -20176
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and dl, 120 # instrumentation
cmovnz esi, eax
xor bl, al
xor dl, -19
test eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
or rbx, rdi
xor bl, -102
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
xor di, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
