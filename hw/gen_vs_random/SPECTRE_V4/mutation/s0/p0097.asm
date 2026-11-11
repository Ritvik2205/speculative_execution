.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, 24441
mov dl, dl
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
and dl, bl
btc rax, rdx
add si, 4
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
cmp al, 81
xor rsi, -3
or al, -71
imul dx, bx
test eax, 1880179600
add dl, dl
not dl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
cmp ax, -15031
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
add ecx, eax
test bl, 24
cmovo dx, si
xor rbx, rax
or dl, 56
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
test rdi, -1876639003
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
cmovnle cx, cx
test al, bl
sbb rax, 183833426
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
add cl, -21 # instrumentation
adc rdi, 5
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
mov dil, -118
and dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
adc ax, ax
cmp rax, -1102558854
cmp dx, si
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or ax, -12775
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
cmovnbe cx, bx
neg al
sub dl, cl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
