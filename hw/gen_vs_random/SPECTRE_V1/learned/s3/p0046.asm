.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
xor sil, cl
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 85
not eax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 87
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
sub al, cl
add dil, 72
test al, 42
adc esi, -66
or rbx, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
