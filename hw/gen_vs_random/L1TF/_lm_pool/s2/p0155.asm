.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 52
or sil, -44
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
bts dx, 84
bts ecx, 225
cmp rsi, 1
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
test al, -82
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
adc al, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
