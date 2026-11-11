.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno esi, edx
bts rdx, 63
xor eax, 1034314125
test bl, 23
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rax]
cmovno rax, rdx
cmovl rax, rbx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -90
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
xchg di, dx
movsx edx, dl
add cl, -109 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 68
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
