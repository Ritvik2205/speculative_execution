.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -68
add dl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edx
imul ecx, ecx, 88
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 60
imul ebx, ebx, 119
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 52
mov dl, cl
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
or cl, sil
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
not rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
