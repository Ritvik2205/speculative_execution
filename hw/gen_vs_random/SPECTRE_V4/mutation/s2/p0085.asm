.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
and dl, bl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
sub ax, 24441
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
adc ax, ax
xor rbx, rax
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
imul dx, bx
cmp rax, 2115020203
btc rax, rdx
cmovnle cx, cx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
add cl, -21 # instrumentation
adc rdi, 5
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and dl, bl
test eax, -558243208
not dl
cmovo dx, si
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
or ax, -15282
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
mov dl, dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
cmp ax, -906
mov dil, -118
or dl, 56
neg al
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
add dl, dl
test bl, 24
cmp dx, si
cmovnbe cx, bx
test rdi, -1876639003
add si, 4
xor rsi, -3
or al, 109
add ecx, eax
cmp al, 70
test al, bl
sbb rax, 183833426
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
