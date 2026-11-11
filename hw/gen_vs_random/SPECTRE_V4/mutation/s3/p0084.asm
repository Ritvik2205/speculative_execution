.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
mov dil, -118
sbb rax, 183833426
cmp al, -52
test al, bl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
or al, 96
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
test eax, -558243208
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
btc rax, rdx
cmp rax, -1102558854
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
cmovnle cx, cx
and dl, bl
sub ax, 24441
add cl, -21 # instrumentation
adc rdi, 5
cmp dx, si
mov dl, dl
not dl
xor rsi, -3
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
test bl, 0
cmovo dx, si
add ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
cmovnbe cx, bx
imul dx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
add dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and dl, bl
or ax, -15282
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
xor rbx, rax
cmp ax, -15031
add si, 4
test rdi, -1876639003
sub dl, cl
or dl, 88
adc ax, ax
neg al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
