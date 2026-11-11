.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
add cl, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
movsx esi, si
imul edx
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
sub eax, -90064733
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
bt rbx, rbx
and bx, bx
sub dl, cl
sbb al, al
xor al, -6
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
mov sil, cl
mov bl, al
btc rdx, rsi
and al, al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
imul cx
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
and dl, cl
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
cmp cl, 59
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
cmovnb rbx, rcx
cmovnl bx, bx
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
sbb si, si
sub rax, 2016976449
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
xchg bl, cl
add al, bl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and cl, al
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
sbb cl, -69
test al, 18
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
inc rax
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
