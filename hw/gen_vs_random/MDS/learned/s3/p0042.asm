.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
cmovnle ecx, esi
xor bl, dl
cmp bl, 41
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovnb di, si
cmovnl rbx, rbx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
cmovo rbx, rdi
and bl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 97
or dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rdi, 82
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
