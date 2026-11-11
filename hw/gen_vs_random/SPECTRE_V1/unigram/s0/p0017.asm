.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 47
imul si, cx, 82
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
btr rax, 71
dec bl
add cl, 44 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
lea ebx, qword ptr [rdx]
setnp dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
cmovb ecx, edx
btr edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
