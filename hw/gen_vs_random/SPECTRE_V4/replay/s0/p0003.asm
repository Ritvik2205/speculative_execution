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
xor al, -40
mov sil, cl
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
sbb cl, 127
xchg bl, cl
sub rax, 2016976449
sub dl, cl
imul cx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
test al, -26
btc rdx, rsi
and dl, cl
add al, bl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
mov bl, al
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and al, al
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
sbb al, al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
cmovnl bx, bx
sbb si, si
cmp cl, 49
inc rax
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
add cl, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
imul edx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
sub eax, -672265139
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
