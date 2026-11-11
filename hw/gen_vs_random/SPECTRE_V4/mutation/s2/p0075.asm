.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
cmovo dx, si
mov dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
adc ax, ax
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
imul dx, bx
add si, 4
cmp ax, -15031
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
sub ax, 24441
xor rsi, -3
or ax, -12775
or dl, 56
test eax, 1880179600
test bl, 0
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and dl, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmp al, 81
add dl, dl
test rdi, -1876639003
add ecx, eax
cmovnbe cx, bx
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
mov dil, -118
cmp dx, si
not dl
btc rax, rdx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and dl, bl
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
cmp rax, -1102558854
sub dl, cl
xor rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb rax, 183833426
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
or al, 95
cmovnle cx, cx
add cl, -21 # instrumentation
adc rdi, 5
neg al
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
