.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rbx]
cmp bl, sil
or cl, dil
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
cmovnp ecx, edi
add al, 65 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
add al, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
xchg esi, ebx
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], ecx
adc bl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
xor sil, bl
add cl, dil
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
