.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
add al, 22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
not edx
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
btr ecx, 91
xchg bl, cl
and rbx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rbx], 30
setnp dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 49
and eax, 933895314
or edx, 60
seto dil
lea dx, qword ptr [rbx + rcx + 60]
setnp dl
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
sbb eax, -108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
