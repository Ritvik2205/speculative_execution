.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
test rax, -1395313845
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 95
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
or bl, cl
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
cmovl dx, bx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
neg rdx
mov si, -8007
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
cmovnle di, dx
imul dx
dec sil
btc cx, 98
sub sil, bl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], bx
sub sil, -35
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
cmovb esi, ecx
bt dx, 81
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 53
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 45
cmovnp ax, bx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
mul rcx
xor sil, dl
neg rcx
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdi
cmp al, al
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
sub ecx, -107
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
cmovnle rdx, rbx
xchg eax, eax
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
add dil, 122 # instrumentation
cmovz ax, di
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
