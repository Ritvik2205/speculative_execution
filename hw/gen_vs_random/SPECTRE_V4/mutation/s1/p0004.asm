.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, -544019457
xor rbx, rax
add ecx, eax
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
add cl, -21 # instrumentation
adc rdi, 5
neg al
cmovnle cx, cx
cmp ax, -906
sbb rax, 183833426
imul dx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
xor rsi, -3
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
add si, 4
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
or ax, -15282
cmp rax, -1102558854
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
adc ax, ax
cmovo dx, si
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and dl, bl
test rdi, -1876639003
not dl
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or dl, 88
cmp al, 19
btc rax, rdx
test bl, 0
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
test al, bl
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmovnbe cx, bx
add dl, dl
sub ax, 24441
or al, 109
sub dl, cl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and dl, bl
mov dl, dl
mov dil, -118
cmp dx, si
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
