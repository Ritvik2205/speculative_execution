.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bx, ax
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
add dl, -55 # instrumentation
cmovnbe ebx, edi
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
adc ax, -22258
inc rdi
cmovnle rax, rsi
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
cmp rdi, rdx
xor di, 8
test al, cl
bt esi, 69
test ax, -6841
cmp dil, dl
cmovl ebx, esi
xor rcx, 112
add bl, 7 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
or dl, dl
cmovb bx, cx
test bl, -91
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
btc eax, edx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
and rcx, 11
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 48
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
bts ebx, 197
add cl, 28 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
or ecx, eax
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 68
sub dl, -16
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
cmovnb bx, dx
movsx edx, dx
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
cmp esi, -84
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
bts rax, 69
adc bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
