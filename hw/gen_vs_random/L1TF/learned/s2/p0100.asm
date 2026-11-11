.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 65 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
inc ax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], -31
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 49
lea ax, qword ptr [rsi]
dec dl
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 51
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
not dl
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
lea eax, qword ptr [rbx]
and dl, dil
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 89
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
btc rbx, rax
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
add sil, 18
and rsi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rsi]
sub esi, ebx
jmp .bb_0.2
.bb_0.2:
test bl, bl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 70
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
