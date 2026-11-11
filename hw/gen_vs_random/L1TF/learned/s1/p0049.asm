.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -95 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
jmp .bb_0.1
.bb_0.1:
xchg rdi, rbx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
sbb cl, dil
lea cx, qword ptr [rax + rdx + 92]
xor al, 38
cmp al, -119
adc dl, -12
test al, -104
sbb dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
