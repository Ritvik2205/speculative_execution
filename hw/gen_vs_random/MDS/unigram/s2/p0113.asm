.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
cmovnl bx, si
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
btr edx, edi
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
cmovs ebx, ecx
cmovnp rbx, rdi
test dl, 48
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and cl, 126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
xor al, cl
cmovz ax, ax
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 50
cmovbe edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
