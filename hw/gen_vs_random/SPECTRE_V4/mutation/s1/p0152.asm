.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
not dl
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
or ax, -15282
cmp ax, -15031
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
test rdi, -1876639003
mov dl, dl
cmp dx, si
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
adc ax, ax
add cl, -21 # instrumentation
adc rdi, 5
sbb rax, 183833426
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
sub ax, 24441
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
imul dx, bx
add dl, dl
test bl, 0
cmovnle cx, cx
cmp al, 81
and dl, bl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
or al, -71
cmovo dx, si
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
add ecx, eax
neg al
xor rsi, -3
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
mov dil, -118
btc rax, rdx
add si, 4
test al, bl
cmovnbe cx, bx
xor rbx, rax
test eax, 1561062795
or dl, 88
cmp rax, 2115020203
and dl, bl
sub dl, cl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
