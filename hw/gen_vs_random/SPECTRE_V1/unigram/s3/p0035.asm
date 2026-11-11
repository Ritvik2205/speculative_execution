.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb esi, ecx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dil
cmovz esi, eax
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rbx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, -36
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
add bl, -23 # instrumentation
setnle bl
test sil, cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
cmovnl edi, esi
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -6
add cl, 83 # instrumentation
setbe al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
