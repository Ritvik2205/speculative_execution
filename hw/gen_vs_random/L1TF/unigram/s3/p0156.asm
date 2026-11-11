.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
sub di, 49
cmp bx, 90
and rsi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], -90
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
cmovz rdx, rsi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rcx
xor edi, 78
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
mov sil, 3
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
add dl, 76 # instrumentation
sbb ax, 10551
sbb dil, dl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
