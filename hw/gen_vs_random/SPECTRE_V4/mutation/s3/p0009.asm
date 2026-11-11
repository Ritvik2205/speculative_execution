.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle cx, cx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and dl, bl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
or ax, -15282
imul dx, bx
cmp dx, si
test bl, 24
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
add cl, -21 # instrumentation
adc rdi, 5
add si, 4
or dl, 56
neg al
add dl, dl
cmp rax, 1524061352
add ecx, eax
sub dl, cl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or al, 95
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and dl, bl
mov dl, dl
mov dil, -118
btc rax, rdx
adc ax, ax
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
sub ax, 24441
cmovnbe cx, bx
sbb rax, 183833426
xor rbx, rax
xor rsi, -3
cmp al, 114
cmp ax, -15409
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
not dl
test eax, -544019457
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmovo dx, si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
test rdi, -1876639003
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
test al, bl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
