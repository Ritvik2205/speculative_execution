.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
add dil, -32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 65
sbb sil, bl
mov rsi, 29
cmovnb ax, ax
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
sbb cl, dil
test eax, -544019457
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
cmovnbe esi, ebx
and rdx, 85
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 25
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 65
adc eax, -1513455903
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], ecx
movzx edx, bl
imul cl
or dil, 37
and rsi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
sub dil, sil
xor si, 1
cmovz ecx, ebx
cmovle dx, dx
or bl, dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rsi
test al, dl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 65
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
bts esi, ebx
inc sil
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], cx
movsx rsi, dx
and cl, al
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
add al, 118
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
mul edx
cmovnle esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
