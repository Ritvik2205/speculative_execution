.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul edx
test sil, sil
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
cmovp bx, bx
cmp dl, al
xor rcx, -111
sbb sil, -11
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 48
neg rsi
sbb dl, 53
or si, 0b1000000000000000 # instrumentation
bsf dx, si
add bl, 95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
xchg al, sil
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
xor dl, cl
movzx edx, bx
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 29
cmovb rsi, rsi
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
or rbx, -107
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 70
and edx, 1
btc ax, 98
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
add ebx, -57
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 96
cmp ecx, 11
cmovp rdi, rax
cmovo di, bx
sub rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
sbb cx, 29
cmp cx, si
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
sub eax, -1804712207
xor edx, esi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
btc di, si
or eax, ebx
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
