.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 23
sbb cl, 35
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and dl, cl
test al, -85
xchg bl, cl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
and bx, bx
cmovnl bx, bx
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
sub eax, -1804712207
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and al, al
bt rbx, rbx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
imul edx
mov sil, cl
add al, bl
sub rax, 1294268026
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 65
and cl, al
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
imul cx
cmp cl, 100
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
sub dl, cl
sbb al, al
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
sbb si, si
inc rax
cmovnb rbx, rcx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
movsx esi, si
add cl, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
mov bl, al
btc rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
