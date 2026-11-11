.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
dec edx
xor eax, 181978569
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 96
adc al, al
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 16
cmovnbe rbx, rsi
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
test dx, di
sbb sil, 108
test bl, 0
cmovle si, ax
movzx dx, bl
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
dec rbx
or bl, 22
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add dl, 56 # instrumentation
cmovle rax, rdx
add rsi, rbx
sub bx, 59
btr rcx, rax
or dil, sil
movzx eax, ax
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 72
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
sbb rbx, 15
sbb ebx, 39
xor dl, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 97
sub rcx, 90
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and bx, 95
cmp rdi, 24
xor dx, 61
test ecx, 59
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rsi
adc dl, 58
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
add al, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
