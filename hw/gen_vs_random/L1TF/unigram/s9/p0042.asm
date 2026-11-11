.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
mul al
adc dil, dil
or dl, -67
cmovp dx, ax
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], -19
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 65
lea cx, qword ptr [rax + rcx + 59]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 25
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 70
cmp bl, bl
lea esi, qword ptr [rbx]
cmovns rcx, rcx
sub rdi, 60
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
