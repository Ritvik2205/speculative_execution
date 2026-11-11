.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovle rdx, rsi
adc sil, 111
cmovnz rsi, rbx
cmovnle ax, di
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rsi]
xor rcx, rdx
dec dil
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
bt edi, 78
cmovnl di, di
sub sil, dl
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
test dl, dil
or rbx, -107
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
add al, cl
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
cmovle rdi, rdx
test si, di
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
cmovbe rdx, rsi
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rax
sbb esi, 63
btr bx, 42
add rbx, rdi
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
cmp bx, 113
add dil, 75
and bl, dil
bts si, 25
sbb ebx, -54
not si
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdi
sbb sil, -11
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and bx, dx
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
mov al, bl
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
