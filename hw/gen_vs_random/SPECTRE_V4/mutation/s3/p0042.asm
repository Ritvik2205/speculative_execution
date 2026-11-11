.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rax, rdi
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xor dl, -123
cmp rbx, rsi
test cl, 78
adc sil, cl
add al, -4
and cl, cl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
xor ax, -22861
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
adc cl, -54
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
adc eax, 1307735127
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
sbb rbx, 20
cmovz rdi, rax
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -41
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
bts cx, di
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ebx
test bx, 24072
xor rdx, rcx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
movsx ebx, dx
adc eax, 917540672
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
sub al, 55
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
cmovle rbx, rax
adc cl, -4
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
add rsi, 68
xchg ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
or eax, -612395655
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
