.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rbx, rcx
and dl, cl
test al, 114
bt rbx, rbx
add al, bl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
cmp cl, 49
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
add cl, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
movsx esi, si
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
xor al, -66
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and cl, al
inc rax
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
sub rax, 1294268026
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
sbb si, si
mov bl, al
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
sbb al, al
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
sub dl, cl
imul cx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
imul edx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
sbb cl, 12
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and al, al
cmovnl bx, bx
mov sil, cl
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
sub eax, -865916088
and bx, bx
btc rdx, rsi
xchg bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
