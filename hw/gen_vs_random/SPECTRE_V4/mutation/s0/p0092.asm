.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -227205962
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
add dl, dl
sbb rax, 183833426
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
sub ax, 24441
cmp ax, -906
or ax, -12775
mov dil, -118
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmp dx, si
and dl, bl
cmovnle cx, cx
test rdi, -1876639003
cmp al, 114
sub dl, cl
cmovnbe cx, bx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
mov dl, dl
or al, 109
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
cmovo dx, si
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
add ecx, eax
xor rbx, rax
and dl, bl
test bl, 24
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
test al, bl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
adc ax, ax
or dl, 88
btc rax, rdx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
test eax, -544019457
xor rsi, -3
add cl, -21 # instrumentation
adc rdi, 5
not dl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
imul dx, bx
neg al
add si, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
