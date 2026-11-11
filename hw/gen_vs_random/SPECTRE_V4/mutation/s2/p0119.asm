.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
cmovo dx, si
cmp rax, -227205962
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
test bl, 0
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
mov dil, -118
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmovnle cx, cx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
add dl, dl
or ax, -15282
xor rbx, rax
and dl, bl
imul dx, bx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
sbb rax, 183833426
add si, 4
cmp dx, si
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
or al, 95
test al, bl
neg al
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
mov dl, dl
sub ax, 24441
or dl, 56
and dl, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
btc rax, rdx
cmovnbe cx, bx
add cl, -21 # instrumentation
adc rdi, 5
test eax, 1880179600
add ecx, eax
test rdi, -1876639003
xor rsi, -3
cmp al, 81
adc ax, ax
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
cmp ax, -15031
sub dl, cl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
