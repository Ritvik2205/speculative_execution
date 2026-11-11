.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rsi, 68
test bx, 24072
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
sub al, -84
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
adc eax, 1019803307
adc cl, 6
adc sil, cl
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -41
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
xor rdx, rcx
sbb rbx, 20
test cl, -119
xor dl, -66
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
cmovz rdi, rax
xor ax, -22861
xchg ebx, esi
adc eax, -983562873
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
adc cl, -54
cmovbe rax, rdi
add al, -127
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], esi
bts cx, di
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ebx
movsx ebx, dx
cmp rbx, rsi
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
and cl, cl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
or eax, 1001462340
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
cmovle rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
