.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
sub cl, cl
lea rax, qword ptr [rdx + rdx + 1405]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
sub ax, 19828
lea si, qword ptr [rdi]
cmp di, -98
sbb rax, -1477844571
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
sub al, bl
sbb rax, 717206440
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
