.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 26
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
xor rdx, rcx
xchg ebx, esi
test bx, 24072
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edi
adc cl, -66
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
xor dl, -123
movsx ebx, dx
adc eax, -60
sbb rbx, 20
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
test cl, 78
xor ax, 45
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and cl, cl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
adc eax, -60
or eax, 185586366
add al, -6
cmovbe rax, rdi
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -41
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ebx
adc cl, -85
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
cmp rbx, rsi
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], esi
adc sil, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
cmovle rbx, rax
bts cx, di
cmovz rdi, rax
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
add rsi, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
