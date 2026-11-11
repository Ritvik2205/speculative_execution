.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 80
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edx
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], cx
bt esi, eax
imul sil
cmovp ax, bx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
test eax, 1561062795
test rcx, -2118888343
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 49
sbb eax, -1688332460
sub dil, -10
cmovb dx, dx
movzx edx, dl
test dl, 19
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add dl, cl
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
or si, ax
bt esi, edx
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
or cl, dl
cmovnp edi, esi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
cmp dl, 35
movzx ax, dl
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
xor si, 62
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 86
xor dl, al
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
sub rbx, rdx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovns ax, dx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 90
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
add dl, -114 # instrumentation
cmovl si, cx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
cmovb rax, rbx
add bl, bl
not cx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 75
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
