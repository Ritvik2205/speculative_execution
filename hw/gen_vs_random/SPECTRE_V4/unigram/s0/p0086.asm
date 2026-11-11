.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp eax, edx
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
adc rdx, -90
add bl, 69 # instrumentation
cmovnbe cx, ax
bt eax, esi
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
sub rdx, rdx
adc rdx, rsi
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
cmp esi, -84
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
bts si, 57
mov rax, -4627568876460436527
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
mul cl
sub al, cl
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 81
cmovnp rbx, rcx
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 18
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 17
sbb bl, -98
xor rbx, -99
cmovbe rax, rdx
or rdx, 1
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], ebx
sbb dx, 2
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 87
or dl, -26
btr rbx, 31
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
add cl, 31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
mul rcx
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rcx, 29
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 13
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
xchg edx, esi
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
