.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
cmovz eax, esi
bt edx, edx
or edi, esi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 34
cmovle esi, eax
cmovnle eax, edx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and ax, 15401
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
bt rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rbx
or rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
