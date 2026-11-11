.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 109 # instrumentation
adc cx, 52
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
setnl cl
lea esi, qword ptr [rdx]
sub ecx, 1
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
not cx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and edi, 96
bt rax, rbx
xor dl, 9
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rsi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
