.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
test edx, 100
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
sbb edx, 105
sets dl
setp dil
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, -78
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 22
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
add rsi, -60
bts rsi, rax
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
cmovno di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
