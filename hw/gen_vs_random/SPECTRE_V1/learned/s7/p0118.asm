.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
cmovno bx, ax
test bl, -8
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
xor al, dil
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
test al, 48
sbb bl, 79
sub bl, -19
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
cmp dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
