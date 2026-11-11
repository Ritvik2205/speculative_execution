.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
cmovnb ax, dx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], ax
xor dil, 117
imul sil
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
not si
sbb cl, dl
add si, dx
sub rax, rax
imul rdi, rdx
bt rcx, rdi
cmovnb bx, dx
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdx
bts eax, 33
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 80
adc cx, 26
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 70
bt si, 114
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
cmovbe rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], 94
sbb cl, cl
or ecx, eax
or rdx, rsi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
sub dl, -16
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
test sil, 68
adc rcx, 57
cmovnz rsi, rax
cmp rsi, 22
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
btc rdx, rdi
neg sil
cmovnle rcx, rax
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
or cl, -55
add dl, bl
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
