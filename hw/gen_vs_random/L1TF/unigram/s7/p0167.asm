.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, cl
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], 49
add dil, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
cmovnz si, si
sbb cl, sil
cmp ebx, 43
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 77
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
cmp si, 40
xchg dil, dl
cmp cl, cl
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
or ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
