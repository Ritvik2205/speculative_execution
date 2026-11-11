.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rax, rcx
movzx eax, sil
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 31
xor al, al
cmovb si, si
add cl, 106 # instrumentation
cmovnp rax, rcx
sbb eax, 2051746726
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 63
and dil, al
or al, dl
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
sub dl, 43
cmovz ecx, eax
add cl, -21 # instrumentation
adc rdx, 90
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 42
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
add sil, bl
sub rax, -701741274
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
sbb ax, -26881
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
test bl, 0
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
sub edx, ebx
imul dl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rbx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 61
cmp esi, 1
and dil, cl
btc di, 36
add cl, 110 # instrumentation
movsx di, cl
and al, -127
bts edx, 57
mul dl
cmovle si, dx
and rbx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rbx]
cmovnbe rbx, rdx
or sil, 89
adc dil, 8
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
movzx ecx, cx
mov cx, 8
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rsi
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
