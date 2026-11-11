.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ecx, eax
cmovo dx, si
cmp ax, -906
neg al
or ax, -15282
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
add si, 4
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
test bl, 0
cmovnle cx, cx
add dl, dl
cmovnbe cx, bx
sub ax, 24441
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
test eax, -558243208
cmp rax, -1102558854
not dl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
xor rbx, rax
mov dl, dl
mov dil, -118
adc ax, ax
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
cmp dx, si
xor rsi, -3
imul dx, bx
or dl, 88
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
or al, -71
add cl, -21 # instrumentation
adc rdi, 5
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and dl, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmp al, 114
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
btc rax, rdx
test al, bl
test rdi, -1876639003
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
sbb rax, 183833426
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
