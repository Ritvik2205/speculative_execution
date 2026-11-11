.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, -818909344
cmovnle cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
add dl, dl
add ecx, eax
cmp rax, -1102558854
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
sub dl, cl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
test rdi, -1876639003
and dl, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmp al, -52
neg al
add cl, -21 # instrumentation
adc rdi, 5
imul dx, bx
cmovo dx, si
adc ax, ax
test al, bl
test bl, 0
or ax, -12775
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and dl, bl
cmovnbe cx, bx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
sub ax, 24441
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
or al, 109
mov dl, dl
xor rbx, rax
not dl
add si, 4
btc rax, rdx
cmp dx, si
or dl, 88
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
sbb rax, 183833426
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmp ax, 23131
xor rsi, -3
mov dil, -118
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
