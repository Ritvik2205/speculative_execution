.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, -121
add al, -44
dec al
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
adc cl, al
test cl, bl
dec al
add al, -82
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
sbb dx, 2
xor cl, -15
or rax, 185991441
add al, -4
or dl, 71
add al, -3
sbb dil, 22
sub dil, bl
sub dil, cl
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
add cl, sil
or al, bl
sub al, 59
mov al, sil
xchg bx, si
xor cl, -73
adc dl, 65
sub bl, sil
xor rax, -111081832
and al, -12
add al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
