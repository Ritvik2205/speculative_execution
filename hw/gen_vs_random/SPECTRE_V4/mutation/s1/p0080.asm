.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, bl
or ax, -15282
test eax, -544019457
not dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
adc ax, ax
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
cmovnle cx, cx
imul dx, bx
add cl, -21 # instrumentation
adc rdi, 5
test rdi, -1876639003
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
neg al
cmp dx, si
cmovo dx, si
sub dl, cl
btc rax, rdx
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
cmp al, 70
cmovnbe cx, bx
and dl, bl
cmp ax, -906
test al, bl
add ecx, eax
sub ax, 24441
or dl, 88
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
add dl, dl
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
xor rbx, rax
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
xor rsi, -3
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
mov dil, -118
add si, 4
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
mov dl, dl
or al, -71
cmp rax, 2115020203
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb rax, 183833426
test bl, 0
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
