.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
bt ecx, 34
add cl, bl
adc dx, 38
sbb eax, -984782068
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
sub cl, -74
btc rdx, rcx
dec rdx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
cmovnbe rax, rdx
sbb ebx, 2
cmovo rax, rdx
xor ebx, edi
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
bswap ebx
test sil, dil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 77
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
movsx eax, cx
cmovl rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
sbb cl, al
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
adc dl, sil
sub al, al
sub dl, 43
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
cmovb edx, esi
movzx dx, al
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
or ecx, edi
add al, 5
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 95
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
