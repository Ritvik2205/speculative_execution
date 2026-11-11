.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle cx, cx
or dl, 88
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
btc rax, rdx
test bl, 0
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
and dl, bl
add si, 4
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
neg al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
cmp dx, si
and dl, bl
sub dl, cl
adc ax, ax
cmovnbe cx, bx
test rdi, -1876639003
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
add cl, -21 # instrumentation
adc rdi, 5
xor rbx, rax
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sub ax, 24441
mov dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmp rax, -120490246
cmp al, 114
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
add ecx, eax
not dl
cmovo dx, si
imul dx, bx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
mov dil, -118
test al, bl
add dl, dl
or ax, -15282
cmp ax, -15409
or al, 96
sbb rax, 183833426
test eax, -544019457
xor rsi, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
