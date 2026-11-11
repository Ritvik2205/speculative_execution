.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, dil
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 76
add bl, -84 # instrumentation
cmovb si, cx
or cl, 66
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rcx
adc eax, esi
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
bt rbx, rdi
add rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
test cx, 7280
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], ebx
cmovbe rbx, rcx
or sil, -47
or bl, -35
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
cmp ecx, 89
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rax
mov cl, bl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 66
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
test bx, 24072
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
test rdx, -1074289902
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 90
or cx, 0b1000000000000000 # instrumentation
bsr si, cx
cmovle rdi, rax
or esi, 32
xchg dil, dil
cmovp rax, rbx
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 90
adc bl, al
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
adc dil, 109
add ax, ax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], esi
adc bl, -20
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
