.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -122
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
sub dl, cl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
cmovnb rbx, rcx
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
sub rax, 714283065
cmp cl, 49
and al, al
and dl, cl
movsx esi, si
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
sbb si, si
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
xor al, -6
xchg bl, cl
sbb al, al
inc rax
mov bl, al
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
and cl, al
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
sub eax, -1804712207
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
add al, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
imul edx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
add cl, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
btc rdx, rsi
cmovnl bx, bx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
sbb cl, 12
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
and bx, bx
bt rbx, rbx
test al, -38
mov sil, cl
imul cx
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
