.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
lea esi, qword ptr [rsi + rcx]
xchg rcx, rax
or rsi, -119
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
add esi, 95
test cx, -17886
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
xor dl, sil
and rbx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rbx], 64
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
setnz dl
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
