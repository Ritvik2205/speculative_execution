.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add ax, 1313
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
sbb cl, dl
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
jmp .bb_0.4
.bb_0.4:
test bl, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
