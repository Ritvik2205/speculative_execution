.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
cmovp rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
add dl, -91 # instrumentation
cmovl rcx, rax
sub cx, -114
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
and cl, -128
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
mul si
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
xchg ebx, ecx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
and bl, bl
and dil, 8
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
sub rbx, 101
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
adc dl, dl
add al, -120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
or sil, sil
mov dil, 89
xor rdx, 106
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
or al, -83
sub eax, edx
cmovl eax, ebx
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
add edx, 89
add cl, 111 # instrumentation
cmovnle bx, cx
neg cl
xor bx, 106
btc esi, ebx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
cmp al, -122
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
adc dl, 53
adc dl, dl
sub edx, -122
neg eax
neg ecx
or dl, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
