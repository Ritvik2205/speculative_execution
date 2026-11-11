.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
add bl, -74 # instrumentation
cmovnp rbx, rdx
or al, 1
adc edx, -86
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
xor rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
mov si, -8007
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
mov dl, al
or rax, 980130592
sub bl, -98
and cl, cl
cmovbe rdi, rcx
and bl, dil
and al, dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
test dx, 28394
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
adc ax, 17267
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
sub cl, 92
add bl, 54
cmovle rdx, rax
btc rcx, rbx
add cl, bl
xor rax, -117
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and ax, -197
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
adc bl, al
and al, 92
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
add al, 40
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
