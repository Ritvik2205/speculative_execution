.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, 105
sub dl, dl
cmovs dx, di
and bl, -65
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
and cl, sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
adc al, al
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
lea di, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
lea rcx, qword ptr [rbx]
lea ecx, qword ptr [rdx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
