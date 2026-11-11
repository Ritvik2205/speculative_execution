.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
or dl, dl
adc di, -78
sbb eax, edi
or eax, 1470564945
add dil, 105
cmp rdx, rbx
movzx rax, di
test sil, 68
neg ecx
or dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
cmp al, cl
adc ax, dx
cmovb rsi, rax
sbb sil, -124
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
xchg rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmp sil, -100
cmovs ecx, esi
cmovnp edi, edx
cmovnbe rcx, rdx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
sub di, 9
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
cmp cx, 0
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and ecx, 71
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 4070
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
inc cx
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
add cl, -118 # instrumentation
sbb rsi, 45
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
add al, 41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 38
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
sbb dl, cl
sub rsi, -104
neg dl
test edx, edx
sbb ax, 7207
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], di
btc eax, 62
cmovnb bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
