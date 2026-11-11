.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bx, 20
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], 82
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, 118
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
and dil, bl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 19
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
mov dil, bl
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rbx
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], si
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 96
cmp rdi, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
