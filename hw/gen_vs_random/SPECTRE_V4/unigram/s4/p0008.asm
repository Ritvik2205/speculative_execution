.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
sub rbx, rbx
btc rdi, 57
cmp cl, dl
adc bl, 35
test cx, 19367
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
cmp dl, dl
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 82
xor dl, -123
test cx, 19367
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
btr rsi, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
dec sil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
xor dl, -123
add cl, 18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
cmovnp eax, ecx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
mov cx, dx
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
adc ecx, 114
test dl, -81
not al
add cl, -33 # instrumentation
not dl
mov sil, sil
cmp edi, eax
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
movsx di, al
adc rdi, rsi
and rsi, 0
dec di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
or dl, 71
cmovnbe di, ax
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rsi
test sil, 1
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
sub dl, sil
cmovo di, ax
sub rdx, 4
add ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
