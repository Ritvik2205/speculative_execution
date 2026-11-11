.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -7857
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
add sil, sil
bt ax, si
bt eax, 54
or al, -83
movzx edi, dl
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
inc si
mov ax, bx
add sil, 16 # instrumentation
cmovnz bx, si
test al, cl
add bl, cl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 88
add al, 19
add sil, sil
adc al, -59
or edx, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
or bx, bx
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
add dl, -59 # instrumentation
movsx eax, cl
movsx rcx, di
adc rax, rdi
xchg cx, bx
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
sbb eax, 1482884079
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
sbb al, 102
sbb bl, -98
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 72
imul ax, bx, 68
add cl, 111 # instrumentation
cmovnle ax, bx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
bt di, 78
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], sil
add cx, cx
btc rbx, rax
bts ebx, ecx
xor al, 99
movsx ax, al
sbb edx, 93
and rbx, 79
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 80
add al, 80 # instrumentation
mov dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
