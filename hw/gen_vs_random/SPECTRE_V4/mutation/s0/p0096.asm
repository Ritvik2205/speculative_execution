.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
cmovnb rbx, rcx
movsx esi, si
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
bt rbx, rbx
and cl, al
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and bx, bx
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
xor al, -31
mov sil, cl
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -122
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
sbb cl, 127
xchg bl, cl
sub rax, 2016976449
sub dl, cl
imul cx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
movzx ebx, dil
not dl
bts dx, 96
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -32 # instrumentation
cmovp rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
cmovl rcx, rsi
cmovnbe rbx, rdi
test al, 57
cmovl si, di
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
cmovl rsi, rax
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
