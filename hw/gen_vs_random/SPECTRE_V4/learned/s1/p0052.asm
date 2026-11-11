.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, -818909344
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
imul dx, bx
xor rbx, rax
btc rax, rdx
sub ax, 24441
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb rax, 183833426
adc rdi, rdx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
xor al, 69
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
cmovo ax, bx
cmovnl rax, rax
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ebx
cmovno dx, ax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
test rdi, -1876639003
cmp dx, si
or al, 96
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
and dl, bl
test rax, -331426050
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
xchg edx, ecx
test cl, -89
xor al, 102
or dl, 56
not dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
bt edx, 6
test bl, 24
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
cmp rcx, 38
and al, -36
test rax, -331426050
xor cl, -54
sub dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
