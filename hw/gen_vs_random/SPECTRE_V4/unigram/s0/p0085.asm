.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
xor al, 102
or eax, edx
adc di, -110
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xchg ebx, esi
mul rbx
or edx, esi
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
cmp dl, sil
cmovb si, si
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
adc esi, 90
test eax, -818909344
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 29
cmovnp rsi, rdi
add dl, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
neg dil
cmp dil, bl
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 31
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 53
cmp dil, dl
adc esi, 90
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
sub bl, bl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
cmp rax, -1102558854
cmovnbe rsi, rbx
and dx, 1
btc ax, cx
sbb al, -101
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
xchg eax, esi
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], bx
or sil, 30
cmovnle rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
