.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test al, bl
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
or ax, -12775
cmovnle cx, cx
add si, 4
and dl, bl
test bl, 0
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
cmp ax, -15031
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
test rdi, -1876639003
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
xor rsi, -3
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
sbb rax, 183833426
cmp dx, si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
adc ax, ax
mov dl, dl
mov dil, -118
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
add ecx, eax
or al, 109
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
test eax, -544019457
sub ax, 24441
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
cmovo dx, si
btc rax, rdx
or dl, 88
add dl, dl
imul dx, bx
cmovnbe cx, bx
xor rbx, rax
cmp al, -52
neg al
not dl
and dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
cmp rax, -227205962
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
