.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
nop
movsx ax, bl
lea rdi, qword ptr [rbx + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 58
or dil, 98
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
cmovz edi, eax
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 100
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
cmp al, 53
setnz al
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
setnle bl
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
