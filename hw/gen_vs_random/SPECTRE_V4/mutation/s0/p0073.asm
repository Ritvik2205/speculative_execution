.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dl
test al, bl
test eax, -544019457
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
neg al
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
sbb rax, 183833426
xor rbx, rax
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
add dl, dl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
or ax, -12775
cmovo dx, si
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
imul dx, bx
add ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
mov dl, dl
and dl, bl
cmp dx, si
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
test bl, 0
mov dil, -118
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
sub dl, cl
cmp al, 81
xor rsi, -3
cmovnbe cx, bx
cmovnle cx, cx
and dl, bl
add cl, -21 # instrumentation
adc rdi, 5
add si, 4
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
or al, -71
sub ax, 24441
cmp ax, 23131
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
test rdi, -1876639003
cmp rax, 1524061352
or dl, 88
btc rax, rdx
adc ax, ax
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
