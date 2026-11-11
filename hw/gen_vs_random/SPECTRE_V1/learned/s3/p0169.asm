.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
sbb ebx, 45
xor bl, cl
test bl, -8
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -82
lea dx, qword ptr [rcx + rsi + 93]
lea esi, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
and dl, cl
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
