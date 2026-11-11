.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rax
add bl, -118 # instrumentation
cmovp di, di
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
sbb dl, al
jb .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, bl
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 87
dec rcx
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and cx, 24
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
test rbx, 1
cmp dl, cl
cmp bl, cl
add bl, -89 # instrumentation
sbb ebx, eax
add dl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
