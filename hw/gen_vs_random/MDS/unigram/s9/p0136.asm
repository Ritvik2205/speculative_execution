.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
or rax, -141551502
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 40
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rbx], dx
cmovns ebx, edi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and cl, -8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 34
or esi, -110
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
cmovle si, ax
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
