.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 32
movzx dx, dl
xor rdi, rdx
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 22
add dl, -10 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
movsx eax, sil
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 1
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
sbb rax, 183833426
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 65
cmovns eax, eax
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
sbb bl, bl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
btc rbx, rcx
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
neg ebx
cmovnbe rcx, rdi
test bl, bl
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
cmovnl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
add bl, cl
xor edx, esi
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], si
setnle al
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
