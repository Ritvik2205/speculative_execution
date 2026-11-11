.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -99
add al, 109 # instrumentation
adc dx, 67
or al, cl
add cl, 44 # instrumentation
cmovns ax, dx
sbb dl, dl
or si, 54
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
lea rax, qword ptr [rax + rdx + 44]
jmp .bb_0.1
.bb_0.1:
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
lea ecx, qword ptr [rbx + rdx + 89]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
