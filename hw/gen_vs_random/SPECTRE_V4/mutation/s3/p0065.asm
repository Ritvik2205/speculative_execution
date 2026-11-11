.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
xor rbx, rax
add si, 4
cmovnbe cx, bx
test bl, 24
sbb rax, 183833426
test rdi, -1876639003
cmp rax, 2115020203
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
adc ax, ax
test eax, -544019457
cmovo dx, si
mov dil, -118
sub dl, cl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
cmp al, 19
add cl, -21 # instrumentation
adc rdi, 5
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
or ax, -12775
mov dl, dl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
cmp dx, si
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
or al, 109
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
btc rax, rdx
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
or dl, 56
cmp ax, 23131
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
add ecx, eax
imul dx, bx
test al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
sub ax, 24441
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
not dl
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
xor rsi, -3
cmovnle cx, cx
and dl, bl
and dl, bl
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
