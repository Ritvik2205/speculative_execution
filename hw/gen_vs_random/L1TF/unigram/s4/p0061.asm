.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, bx
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
xor dil, al
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 82
xor al, -127
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 7
btr rsi, 55
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
sbb dil, 38
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 86
bts esi, ebx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 77
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
cmp bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
