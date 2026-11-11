.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -55
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
movzx rdx, cx
or al, al
sub al, 26
mov al, 119
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
imul rcx, rax
or di, 122
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
bt ax, 84
xor bl, bl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
test eax, 1947430392
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
or dl, -26
or dl, al
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
imul rdx, rdi
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
sbb dl, 75
adc cl, 111
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
cmovnb bx, cx
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
or ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
xchg cx, ax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -115
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
add ax, 6414
test ax, -23852
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
xor al, -31
xor al, 30
btr rcx, rcx
add al, -86 # instrumentation
cmovnp edi, esi
or cl, sil
btc rax, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
