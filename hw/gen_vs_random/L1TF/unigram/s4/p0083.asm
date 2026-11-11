.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rdi, di
cmovl esi, ecx
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
add dil, sil
sets bl
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
sub edx, -33
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
cmp ax, 7046
add sil, -93 # instrumentation
cmovb rbx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
