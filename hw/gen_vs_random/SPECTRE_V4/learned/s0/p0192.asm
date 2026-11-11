.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
add edi, 11
sbb eax, 1081973675
cmp al, 19
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
dec rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
dec edi
cmovp eax, eax
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 32
and eax, -37
nop
sub bl, 17
add rdi, rdx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
sub cl, cl
sbb dl, dl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bts eax, 209
sub esi, 10
add edx, 73
adc bx, -89
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
lea esi, qword ptr [rcx + rdi + 14]
and eax, -37
xchg ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdx
mov edi, -1544998000
btc dx, 16
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
add bl, -72
sbb dl, bl
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
