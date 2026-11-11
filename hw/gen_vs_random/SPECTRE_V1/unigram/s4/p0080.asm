.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 52 # instrumentation
sets dl
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
sbb edx, 105
mov al, bl
add sil, 21 # instrumentation
adc si, 12
setle cl
mov bl, dl
btc edi, 29
cmp rdx, -19
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
cmovno ax, cx
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
test dl, 113
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
