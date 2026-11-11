.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle dx, dx
cmovle eax, ebx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 97
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 82
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
xor al, -74
lea rax, qword ptr [rbx + rbx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 93
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 26
cmovnbe dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
