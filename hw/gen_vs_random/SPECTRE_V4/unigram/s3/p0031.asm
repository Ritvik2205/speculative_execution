.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
add ecx, edx
neg rbx
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
test bx, di
or bl, al
bt eax, 54
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
btc edx, ebx
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rbx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovbe edx, eax
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
cmp bl, sil
cmovnz rbx, rdi
sub eax, -672265139
not sil
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdi
test dl, bl
imul eax, esi, 12
and rcx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
cmovbe di, di
and rsi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
sbb cl, dil
btc rdi, rax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 96
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
cmovno eax, edx
dec cx
btr cx, bx
or rbx, -107
and rcx, -20
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
test di, -19523
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
sbb cx, 106
sub esi, -69
adc cl, dil
and rdx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
