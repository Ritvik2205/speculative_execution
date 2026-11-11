.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, dx
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1643105692
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -13
add al, dl
not dx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
setns al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setb al
test eax, 525596342
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
not eax
nop
cmovb edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
