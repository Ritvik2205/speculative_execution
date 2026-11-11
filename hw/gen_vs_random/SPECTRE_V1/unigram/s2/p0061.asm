.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 25
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 31
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rbx
or cl, sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 88
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 80
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
movsx edx, bx
loope .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bx, 63
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
imul edi
and bl, 124
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
bt ebx, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
