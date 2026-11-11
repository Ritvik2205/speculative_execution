.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, 16
and rsi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and bl, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 79
cmovbe rdi, rdi
xor sil, -15
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
or ax, ax
not edx
not sil
jmp .bb_0.1
.bb_0.1:
or dil, dil
cmovnle ax, ax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
cmovno cx, bx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and dl, 72 # instrumentation
cmovz esi, edi
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
