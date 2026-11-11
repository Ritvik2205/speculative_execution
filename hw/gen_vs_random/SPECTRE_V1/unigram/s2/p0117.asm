.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
lea rax, qword ptr [rbx + rdx + 30]
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
setns cl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
add al, -106
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
add dl, 6 # instrumentation
adc rcx, 34
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
sub edx, 86
cmovnl rcx, rax
btc ax, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
