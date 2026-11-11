.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rsi]
lea rax, qword ptr [rdx]
lea rdx, qword ptr [rsi]
cmp bl, 82
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
add dl, 61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rsi]
xor dil, bl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
add dl, 22
not dl
setp al
mov dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
