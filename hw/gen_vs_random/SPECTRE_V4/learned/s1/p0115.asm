.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 7
sub al, cl
cmp edi, 3
and sil, -84
cmp al, -106
xor ax, -6064
and bl, -60
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and cl, -128
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
cmovnz ebx, ecx
cmp rbx, -66
mov dil, cl
or dx, 92
add cl, cl
cmp al, -78
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
sub bl, dil
adc dl, al
cmp cx, 0
cmp bl, cl
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
