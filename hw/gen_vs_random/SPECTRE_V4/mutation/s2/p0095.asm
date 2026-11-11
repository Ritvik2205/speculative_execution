.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rax, rdi
add rsi, -100
cmp rbx, rsi
add al, -99
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
movsx ebx, dx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
test bx, 24072
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
adc cl, -4
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], esi
xor dl, -66
adc sil, cl
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -41
cmovz rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
test cl, -119
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
sbb rbx, 20
xor rdx, rcx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
cmovle rbx, rax
xchg ebx, esi
adc cl, -85
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
adc eax, 1019803307
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
bts cx, di
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
or eax, -612395655
xor ax, 45
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
sub al, -84
adc eax, -3570960
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and cl, cl
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edi
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
