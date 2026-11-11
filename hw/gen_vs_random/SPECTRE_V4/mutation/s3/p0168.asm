.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
or al, -71
test bl, 0
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
cmovnbe cx, bx
cmp ax, -15409
cmp dx, si
add cl, -21 # instrumentation
adc rdi, 5
cmovo dx, si
or dl, 88
add ecx, eax
test eax, -818909344
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
test rdi, -1876639003
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and dl, bl
test al, bl
cmp rax, -227205962
not dl
imul dx, bx
sub ax, 24441
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
adc ax, ax
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
xor rsi, -3
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
cmp al, 81
sbb rax, 183833426
and dl, bl
mov dil, -118
mov dl, dl
cmovnle cx, cx
or ax, -12775
add si, 4
btc rax, rdx
sub dl, cl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
neg al
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
add dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
