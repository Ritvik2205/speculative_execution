.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
setle bl
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
lea dx, qword ptr [rax]
imul esi
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 89
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
setbe bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 6
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 64
add rcx, 23
test dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
