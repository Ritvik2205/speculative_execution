.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl dx, di
imul rcx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 59
nop
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rax + rdx]
cmovnz rcx, rbx
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], esi
add bl, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
lea cx, qword ptr [rdi + rsi]
not ebx
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
cmp dil, -58
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovz rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
