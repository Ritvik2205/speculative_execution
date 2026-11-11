.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -98
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 25
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
sub dil, 95
add cl, 59 # instrumentation
cmovns eax, ecx
btr si, cx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
cmovno ecx, ecx
cmovs edx, ecx
add dil, -15 # instrumentation
cmovl rdi, rbx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
