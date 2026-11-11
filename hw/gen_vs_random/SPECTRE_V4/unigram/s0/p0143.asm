.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 72 # instrumentation
cmovle cx, ax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 87
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
add cl, -82 # instrumentation
sbb di, si
sbb dl, -99
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
xor edi, eax
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdx]
add dl, dil
adc di, di
or dx, di
test ax, -5170
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
sbb cl, -104
adc dl, 70
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 91
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
test ecx, 90
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
bts rsi, rsi
imul edx, eax, 44
sbb di, -76
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
xor ax, 28088
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
cmovnbe dx, ax
adc sil, 81
cmovnp dx, ax
sbb sil, bl
or ecx, ebx
test sil, al
cmovz eax, ebx
neg sil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
mov rax, -8696242625349627833
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
dec rax
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
mov rax, -8696242625349627833
neg ecx
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
add bl, 63 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
