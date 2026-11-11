.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 16560
xor bl, -27
test eax, ebx
xor di, -83
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
xor bl, al
and dl, 120 # instrumentation
cmovnz esi, eax
test eax, 1838539683
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
or rbx, rdi
xor dl, -59
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
test rax, rdi
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
cmovnp rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
