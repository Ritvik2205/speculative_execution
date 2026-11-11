.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and cl, al
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
test bx, 24072
cmp dl, 23
sub rax, -1680844889
cmovb rdx, rax
cmovnb edi, edx
cmovnbe rcx, rbx
bt rcx, 189
sub di, 9
sub si, -92
cmp cl, dil
add dil, al
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
xor dl, -66
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
test rsi, 86
and bl, -30
add al, -79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
sbb cl, al
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
mul rdi
xor cl, 13
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
cmp rbx, rbx
btr dx, si
and bl, al
movzx edx, cl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edx
xor si, -73
adc ebx, 66
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
or dl, 71
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 87
sub cl, sil
or dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
