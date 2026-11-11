.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ax, si
jmp .bb_0.1
.bb_0.1:
cmovnle di, dx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
or rax, rsi
cmovbe edx, edi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
xor al, 9
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
and dl, 17 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
and dil, dil
cmovnbe rsi, rdx
cmovb rcx, rsi
cmovnbe rbx, rdi
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
cmovnp cx, ax
xor dx, 14
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
