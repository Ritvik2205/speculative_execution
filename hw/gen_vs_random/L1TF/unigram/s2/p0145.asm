.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 75
sub al, 25
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
add rax, rdi
test dil, 97
adc bl, dl
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 69
jmp .bb_0.1
.bb_0.1:
add al, -112 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
lea rax, qword ptr [rdx + rcx]
or dil, -28
and rbx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
add dil, 88
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
