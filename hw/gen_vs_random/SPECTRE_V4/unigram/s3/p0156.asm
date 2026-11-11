.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle si, dx
sbb dl, 53
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], -112
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
or rbx, 69
test al, 114
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
imul ecx, edi
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
test bl, dl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
test ax, ax
sub ecx, -107
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 69
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 42
adc esi, 1
movzx eax, dx
cmovbe rax, rcx
add rdx, 15
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edi
or si, 85
imul rdx, rax, 28
or si, -84
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
test dl, 114
and rcx, -20
and bl, dil
cmp rsi, 22
add al, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], -15
or cl, sil
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
add bl, 54
dec dil
bt si, cx
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
btr si, di
btr rax, 187
xor rsi, -3
or cx, si
sbb sil, dil
cmovl eax, ebx
cmp bl, bl
btc rsi, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
