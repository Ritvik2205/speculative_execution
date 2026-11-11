.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], eax
neg rdi
adc al, 41
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
cmp ecx, 36
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], ax
mov sil, cl
cmp dl, 23
mov dx, 11552
cmovl ax, dx
sbb dl, -71
sbb bl, sil
and rbx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rbx]
btc rdx, 178
mov al, bl
sub rcx, -74
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
add bl, -59
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
movzx rbx, si
neg dl
and rdx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
add si, bx
cmovnz rdi, rdi
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
sbb dl, cl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
cmovbe dx, bx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
add dil, bl
cmovnle cx, dx
and rax, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], ecx
bt di, dx
sub esi, -10
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rsi
adc rbx, 60
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
add al, dl
sub cx, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
