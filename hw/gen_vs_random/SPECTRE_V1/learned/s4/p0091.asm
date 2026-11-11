.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
test bl, -8
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], 23
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and sil, 52
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
sub bl, sil
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
