.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -612395655
btc rdx, 130
inc eax
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
cmovbe rsi, rbx
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 53
and sil, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
sbb dil, dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
sbb rdi, rdx
cmovnz cx, ax
movzx bx, dil
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
bt di, 90
movsx rax, bx
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
cmovnz si, bx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
cmovnle rdx, rbx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
test bl, bl
movzx bx, sil
inc rdi
cmovbe ebx, edx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
cmovnl ax, dx
btr edx, 160
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
adc dl, dl
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
btr cx, bx
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 100
cmovl di, bx
and rcx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rcx]
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
or ax, di
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
