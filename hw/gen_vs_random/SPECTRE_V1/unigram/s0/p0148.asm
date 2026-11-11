.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, cl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 42
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -1185
sub cl, bl
cmovle ecx, ebx
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
setnp dl
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
sbb sil, dil
imul al
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
setnl sil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 94
cmp dil, al
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
