.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
cmp bl, al
sbb al, -14
lea eax, qword ptr [rbx]
mov cl, sil
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
inc edi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
sub cl, bl
sub ax, -16648
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
