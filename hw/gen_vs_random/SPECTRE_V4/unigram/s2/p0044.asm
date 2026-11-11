.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cx, -22668
cmovnbe edx, edi
and rax, -779592432
or ax, 57
sbb bl, -98
sub bl, dl
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
cmovo bx, di
bt cx, si
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
add dl, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
movzx cx, cl
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
and bl, -60
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
sub edi, 93
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
btc rdx, 130
add rax, 1049076260
cmovbe bx, bx
sub bl, al
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rdx]
cmp edi, 3
adc al, dil
test ax, ax
and rdi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
sub bx, ax
add rax, rsi
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edx
sub bl, sil
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
or ebx, -78
cmovo dx, di
and al, -124
and bl, bl
sbb dil, 79
sbb bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
