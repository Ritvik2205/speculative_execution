.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rdx, 95
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
sub cl, cl
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], -9
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
test rax, rbx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
seto sil
cmovl cx, ax
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
