.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -50
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and al, -36
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sub rdx, rbx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 24
cmovz ecx, eax
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
add dl, 41
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
or al, bl
cmovnp rdi, rax
cmovnp rsi, rdi
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
sbb dl, bl
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
sbb sil, 108
mul rbx
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and dx, 1
and al, dl
neg cl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
adc edi, 12
xor dl, 31
cmovnbe rcx, rdi
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
mov rcx, 5862286138240743445
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
test al, dl
and dl, cl
btc si, dx
bt esi, eax
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], dx
add dx, -90
mov rsi, 85
or rbx, rax
test cx, 85
movzx edx, cl
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
cmovnl rsi, rax
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
test al, sil
cmovz ebx, ebx
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 29
or dl, dl
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
