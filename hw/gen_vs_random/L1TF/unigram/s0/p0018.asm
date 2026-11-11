.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 54
add bl, bl
lea ecx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 8
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
sub cx, 51
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], esi
dec cx
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rsi
test dil, -126
cmp dl, -56
setb sil
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
cmovl rax, rbx
xor ax, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
