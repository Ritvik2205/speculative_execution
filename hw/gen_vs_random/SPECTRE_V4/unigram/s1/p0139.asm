.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
add sil, sil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
adc rax, rbx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 8
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
xor rdi, rsi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
cmovp esi, ebx
or dl, bl
and dil, bl
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add dl, 41
xor cl, -54
movsx edx, di
cmovnle rdx, rdx
add sil, -71 # instrumentation
adc sil, dl
and dx, 1
btr rax, rsi
imul sil
mul rbx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 65
cmovnle dx, cx
add dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 73
btr dx, bx
movzx dx, al
cmovns bx, si
and cl, 58
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
imul rsi
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 29
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
sub esi, ebx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
add dl, 100 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
cmovnp bx, ax
movzx di, bl
adc dx, 2
imul si, di, 55
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 100
xor edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
