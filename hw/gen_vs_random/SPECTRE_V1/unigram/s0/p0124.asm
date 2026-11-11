.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 19 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
cmp al, 13
btr rdi, rbx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rbx
sbb ax, -17107
cmovno ebx, eax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 61
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
sbb bl, dil
bts bx, bx
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
