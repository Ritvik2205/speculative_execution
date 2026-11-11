.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 31571
sub al, 88
or rdi, 71
sbb al, dl
lea rdx, qword ptr [rbx + rax]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], edi
lea edx, qword ptr [rax]
sub dil, 95
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
sub sil, al
btr esi, edx
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
mov dil, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
