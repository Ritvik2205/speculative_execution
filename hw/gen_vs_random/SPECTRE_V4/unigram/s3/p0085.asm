.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
or cx, 0b1000000000000000 # instrumentation
bsr si, cx
adc al, 43
not rbx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], si
test edx, 1479885278
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
mov dl, cl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
mov bl, 106
add ecx, 99
sub sil, -35
test rbx, rcx
sub edi, 16
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
cmovl eax, esi
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
sbb cl, 12
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
btr ax, 109
and cl, sil
adc al, -59
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
adc dl, 14
xchg dx, di
or dil, dil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
add dl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
add di, di
cmovb dx, cx
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
add al, -109 # instrumentation
cmovns dx, cx
cmovnz rax, rax
bt rax, 59
cmovnb di, cx
adc esi, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
