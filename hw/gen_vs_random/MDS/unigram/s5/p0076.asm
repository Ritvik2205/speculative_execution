.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
cmovno bx, cx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 33
or bl, 13
cmovno rdx, rsi
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and cl, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
or edi, -88
bts rax, 77
test bl, al
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 80
or si, -12
cmovnbe ax, cx
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
