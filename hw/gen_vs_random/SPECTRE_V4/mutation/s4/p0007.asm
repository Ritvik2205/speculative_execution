.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add si, 4
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
adc ax, ax
cmp al, 70
test rdi, -1876639003
add cl, -21 # instrumentation
adc rdi, 5
imul dx, bx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
or ax, -15282
or al, 95
cmovnle cx, cx
neg al
test eax, 1880179600
and dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
not dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
mov dil, -118
add ecx, eax
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
add dl, dl
test al, bl
or dl, 56
xor rbx, rax
test bl, 0
mov dl, dl
xor rsi, -3
cmovo dx, si
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
cmp ax, -15031
cmp rax, 1524061352
sub dl, cl
and dl, bl
sbb rax, 183833426
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
btc rax, rdx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
cmp dx, si
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sub ax, 24441
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
