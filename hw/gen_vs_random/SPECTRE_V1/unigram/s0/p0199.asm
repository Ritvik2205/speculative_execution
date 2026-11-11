.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 19 # instrumentation
setnz cl
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
add bl, 97 # instrumentation
cmovnb cx, si
add al, -44
setz dil
add dl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 26
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
adc ecx, 14
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor eax, ecx
cmp bl, -114
lea dx, qword ptr [rcx + rbx]
sub dl, 71
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
adc dx, ax
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
