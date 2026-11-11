.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 22
add sil, cl
cmovb di, di
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 63
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
test cl, -49
js .bb_0.1
jmp .exit_0
.bb_0.1:
test edx, 1380346728
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and dil, 2
imul bx, ax
test bl, 34
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
xchg bl, sil
xchg eax, esi
setnz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
