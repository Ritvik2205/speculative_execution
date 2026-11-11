.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
xor dx, ax
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 97
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
cmovz rsi, rax
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
or sil, dil
cmovnz ax, dx
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
bt ebx, esi
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and edi, 23
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
test bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
