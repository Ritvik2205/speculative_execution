.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
lea rax, qword ptr [rbx + rbx + 96]
cmp dl, -115
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
add dil, cl
add eax, 1938514106
adc dl, 80
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
test bl, -8
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
