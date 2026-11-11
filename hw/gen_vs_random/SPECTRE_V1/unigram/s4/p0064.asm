.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno al
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 36
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
mov dil, bl
cmovl ecx, edx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
neg rbx
add bl, dl
add al, -125 # instrumentation
cmovb eax, edi
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 100
cmovl rbx, rbx
cmovp ecx, edi
sbb rsi, 79
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
