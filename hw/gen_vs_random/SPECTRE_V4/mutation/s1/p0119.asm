.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ecx, eax
test bl, 24
mov dl, dl
test eax, 1880179600
cmovo dx, si
cmovnbe cx, bx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
cmp dx, si
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
add si, 4
sbb rax, 183833426
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmp al, 81
neg al
imul dx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
sub ax, 24441
btc rax, rdx
cmp rax, 2115020203
xor rbx, rax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
test rdi, -1876639003
not dl
mov dil, -118
cmovnle cx, cx
add cl, -21 # instrumentation
adc rdi, 5
and dl, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
add dl, dl
or al, 95
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
xor rsi, -3
and dl, bl
cmp ax, -906
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
sub dl, cl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
adc ax, ax
or dl, 56
test al, bl
or ax, -12775
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
