.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, ax
add ecx, eax
imul dx, bx
and dl, bl
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
sub dl, cl
xor rsi, -3
add si, 4
cmovnle cx, cx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
test bl, 24
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or ax, -12775
or dl, 88
cmovo dx, si
cmp rax, -227205962
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and dl, bl
or al, 96
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
mov dil, -118
add dl, dl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
sbb rax, 183833426
cmp ax, -906
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
add cl, -21 # instrumentation
adc rdi, 5
not dl
cmp al, 81
xor rbx, rax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
test rdi, -1876639003
test al, bl
neg al
btc rax, rdx
sub ax, 24441
mov dl, dl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
test eax, 1880179600
cmp dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
