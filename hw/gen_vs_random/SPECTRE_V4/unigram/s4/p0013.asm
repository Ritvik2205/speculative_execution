.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp eax, 512128713
mov al, -114
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
neg ax
test di, di
and rbx, 0b1111111111111 # instrumentation
and cl, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rbx]
neg rdi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ebx
adc al, cl
movzx rdi, dx
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
mov cl, -38
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
sub edi, ebx
or ecx, 1 # instrumentation
add al, 49 # instrumentation
adc cl, sil
xchg rbx, rax
add cl, -8 # instrumentation
xchg al, cl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rsi
and bx, bx
sub rdx, 98
sub sil, -35
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
sub edi, esi
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
sbb rsi, rcx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
sub dil, -40
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
cmovnle rdi, rdx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 40
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edi
sub al, 59
or bx, -33
xor cx, si
movsx ebx, si
adc dil, al
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
test ebx, eax
cmovnbe edi, ecx
adc dil, dil
sub cl, dil
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
mov al, dil
mov ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
