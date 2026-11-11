.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, cx
and rax, rsi
sub si, bx
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
cmp bl, dil
lea dx, qword ptr [rax + rbx + 47]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
cmovnbe eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
adc ax, 87
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
setb sil
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
add bl, 104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
cmovbe rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
