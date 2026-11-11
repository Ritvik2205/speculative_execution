.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
sub bl, bl
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
bt cx, 31
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
movzx rbx, ax
and rbx, 6
add al, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
movzx rax, al
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rbx
mov ax, 31802
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 61
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], ax
test al, cl
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 47
adc edx, eax
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ebx
imul dx, ax
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
cmovs rdx, rcx
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], eax
or ebx, -78
sbb rcx, rax
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 95
and rcx, -20
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
add cl, -9
test al, -38
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
sub cl, -94
mov ecx, -405458789
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], di
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rsi
test dl, 114
bt bx, ax
add al, -109 # instrumentation
cmovns ax, si
add rcx, -61
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 65
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
or sil, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
