.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
xor bl, -116
lea ax, qword ptr [rdx]
add si, 46
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
adc eax, 551972257
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 96
add al, 118 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
