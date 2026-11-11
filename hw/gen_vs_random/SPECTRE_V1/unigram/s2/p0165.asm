.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnl bl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 3
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
sbb dl, 127
adc cl, dl
setnp bl
cmovno ax, dx
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
neg sil
dec bx
add al, -53 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 125
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 13
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
setnz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
