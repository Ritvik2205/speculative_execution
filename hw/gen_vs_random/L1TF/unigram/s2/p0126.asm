.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx bx, cl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
and di, 73
add bl, 92 # instrumentation
sets al
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
add dl, 48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
cmp cx, 40
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
not edx
jmp .bb_0.1
.bb_0.1:
cmovnz ebx, esi
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
cmovnz edi, eax
btc rdx, 152
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
