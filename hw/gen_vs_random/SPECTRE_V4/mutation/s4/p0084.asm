.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
sub ax, 24441
cmovnbe cx, bx
add ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
xor rbx, rax
sub dl, cl
or ax, -15282
and dl, bl
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
cmp dx, si
cmp ax, 23131
add cl, -21 # instrumentation
adc rdi, 5
sbb rax, 183833426
cmovo dx, si
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
xor rsi, -3
neg al
mov dil, -118
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
test bl, 24
cmovnle cx, cx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
add si, 4
cmp al, -23
and dl, bl
or dl, 88
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
test rdi, -1876639003
btc rax, rdx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
adc ax, ax
imul dx, bx
test eax, 1880179600
test al, bl
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
cmp rax, 2115020203
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
or al, 109
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
not dl
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
