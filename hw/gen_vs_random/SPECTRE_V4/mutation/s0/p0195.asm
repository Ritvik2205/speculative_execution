.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 30500
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], esi
test bx, 24072
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ebx
adc cl, -66
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
cmp rbx, rsi
adc cl, 6
bts cx, di
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
and cl, cl
sub al, 96
adc eax, 917540672
xchg ebx, esi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
sbb rbx, 20
xor dl, -123
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
movsx ebx, dx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
adc sil, cl
cmovle rbx, rax
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -41
cmovz rdi, rax
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
adc eax, -983562873
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
add rsi, 68
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
or eax, -1213318393
cmovbe rax, rdi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
add al, -127
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
xor rdx, rcx
test cl, -31
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
