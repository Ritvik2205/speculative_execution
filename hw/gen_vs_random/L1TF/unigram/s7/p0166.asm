.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, esi
or rdi, 37
cbw
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add sil, -49 # instrumentation
adc sil, bl
lea rbx, qword ptr [rbx + rsi + 28]
xchg dil, cl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
add dl, 104 # instrumentation
sbb rdx, 35
cmovp edx, ebx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
sbb dl, -26
and ax, bx
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
