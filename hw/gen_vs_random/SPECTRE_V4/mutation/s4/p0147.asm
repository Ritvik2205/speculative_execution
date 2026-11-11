.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -15282
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
neg al
sbb rax, 183833426
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or al, 96
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
sub dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
add dl, dl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
test rdi, -1876639003
test bl, 0
and dl, bl
sub ax, 24441
xor rsi, -3
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
xor rbx, rax
add cl, -21 # instrumentation
adc rdi, 5
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
cmp al, 114
add ecx, eax
mov dl, dl
btc rax, rdx
add si, 4
test eax, -818909344
or dl, 56
cmp dx, si
cmovo dx, si
test al, bl
imul dx, bx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and dl, bl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
cmovnle cx, cx
not dl
cmp ax, -15031
mov dil, -118
cmp rax, -227205962
adc ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
