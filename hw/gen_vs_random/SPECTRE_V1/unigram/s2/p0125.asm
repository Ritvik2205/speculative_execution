.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
and al, 33
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
cmovs esi, edi
setnl dl
sub al, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
mov ax, 30
lea rdx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
add al, al
sub edi, 61
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
cmp sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
