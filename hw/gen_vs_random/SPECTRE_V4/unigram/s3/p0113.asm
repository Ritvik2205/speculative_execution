.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
cmovnp cx, ax
cmovbe eax, eax
sbb al, 66
add bl, -18 # instrumentation
cmovs si, dx
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
test si, si
and rdi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
mov dl, 81
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
add cl, dl
cmp bl, 12
mov dil, al
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
xor di, 58
xor rcx, 112
cmovo ax, di
sbb dl, -71
movzx rdx, cl
imul edx, ecx, -116
cmovnle rdi, rcx
bt rbx, rdx
btr rbx, 32
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
adc bl, cl
and rcx, 29
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
adc edi, -83
and al, sil
imul di, ax
xchg rdi, rdx
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], bx
sub cx, -114
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
test al, bl
imul sil
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
xor ecx, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
