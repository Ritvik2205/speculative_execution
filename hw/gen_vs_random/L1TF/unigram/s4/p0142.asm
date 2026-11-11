.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
lea ebx, qword ptr [rdi + rax]
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
lea eax, qword ptr [rbx + rdx]
add cl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
sbb ebx, 9
and dl, dl
jmp .bb_0.1
.bb_0.1:
and bl, 89
add dl, -87 # instrumentation
cmovnle rbx, rdx
lea rdi, qword ptr [rax + rcx + 9]
sub dl, 41
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 3
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
