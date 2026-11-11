.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
bts si, 205
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
btr edx, 255
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
jmp .bb_0.1
.bb_0.1:
and dl, 120 # instrumentation
cmovnz esi, eax
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
test rax, rdi
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
xor bl, -61
xor bl, al
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
xor dl, -59
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
test eax, -1634766116
test eax, ebx
xor di, -83
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
or ax, -14271
cmovnp rsi, rbx
or rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
