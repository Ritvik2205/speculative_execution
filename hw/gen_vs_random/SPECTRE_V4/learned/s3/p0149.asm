.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, 1880179600
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
imul dx, bx
xor rbx, rax
btc rax, rdx
sub ax, 24441
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb rax, 183833426
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
adc ax, ax
add dl, dl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
cmp al, 81
cmovnle cx, cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
cmovno dx, bx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
test rdi, -1876639003
cmp dx, si
or al, 95
cmp ax, -15031
movzx eax, dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor cl, -85
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
add ecx, eax
test al, bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
