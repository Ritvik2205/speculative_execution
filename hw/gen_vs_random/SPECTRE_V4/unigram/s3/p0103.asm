.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz esi, edi
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 95
cmovz rax, rsi
cmovp esi, edi
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
neg rcx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 10
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 19
sbb rdx, -43
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
btc rdx, rax
add sil, dl
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
mov sil, dl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
or rdi, 43
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], bl
xor rsi, -102
adc rsi, 82
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], esi
sub ax, 23
adc cl, -86
xor rdi, rbx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
cmovz rbx, rcx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
mov dil, sil
sub cl, sil
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
movzx ebx, cx
xor dl, -66
adc sil, cl
cmovnb dx, cx
sbb cl, -69
cmovnbe esi, ebx
movsx ecx, cx
adc ebx, -55
xor sil, 96
cmovnbe rdx, rcx
mov ebx, esi
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
sub sil, -35
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
xor ax, 45
cmovp ebx, edx
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
