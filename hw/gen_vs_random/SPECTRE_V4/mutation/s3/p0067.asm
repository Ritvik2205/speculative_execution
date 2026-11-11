.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmp dx, si
xor rsi, -3
cmp ax, -15031
imul dx, bx
xor rbx, rax
btc rax, rdx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
test eax, 1880179600
sub ax, 24441
mov dl, dl
cmovnbe cx, bx
add dl, dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
add cl, -21 # instrumentation
adc rdi, 5
neg al
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
or dl, 88
or al, 109
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
sub dl, cl
or ax, -12775
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
cmp rax, -1102558854
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
test bl, 24
not dl
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
cmovnle cx, cx
and dl, bl
add si, 4
test rdi, -1876639003
mov dil, -118
test al, bl
and dl, bl
cmp al, 70
sbb rax, 183833426
adc ax, ax
add ecx, eax
cmovo dx, si
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
