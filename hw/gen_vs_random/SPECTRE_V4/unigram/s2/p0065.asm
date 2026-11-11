.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts si, 7
cmovnz rdx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
mov ecx, -405458789
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
sub ecx, -107
and dil, -61
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], -24
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rbx, 37
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
movzx ebx, al
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
adc esi, 87
or eax, -1213318393
btr ecx, 91
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
cmovl rsi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
or al, dl
adc ebx, -5
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
test dl, -102
cmovle si, bx
xor rdi, -72
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
add cl, 18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
inc dil
xor bx, di
xor di, 34
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
sub dl, sil
adc dl, 81
xchg di, dx
and bl, cl
or ebx, -82
mov dx, 11552
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
add cl, 18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
xor cx, si
neg rbx
or ebx, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
