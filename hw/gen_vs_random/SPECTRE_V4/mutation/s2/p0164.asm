.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and cl, al
cmovnp esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
movsx di, bl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -122
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
add dl, -91 # instrumentation
cmovl rax, rax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 64
xchg esi, eax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
bts edx, edx
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
sbb cl, 12
test bl, -116
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
test al, -38
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
cmovs bx, si
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
sbb dl, -62
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
and al, -28
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
cmovl rcx, rdi
mov bx, 27738
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
bt di, si
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
imul dx, di, 53
xchg edi, edi
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
sbb ax, -30070
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
