.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
add cx, -103
xor rdi, 55
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
test eax, 88788211
mul sil
add bl, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 57
imul al
and rbx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
add dil, 115 # instrumentation
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 18
cmp dil, al
cmp cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
