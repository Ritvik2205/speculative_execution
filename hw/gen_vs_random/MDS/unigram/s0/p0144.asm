.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
bt dx, 228
cmovl ecx, edi
or ecx, 47
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
test dil, 46
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 27
xor sil, -15
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
cmovo rcx, rcx
xor dil, 81
and ecx, -104
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
cmovb edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
