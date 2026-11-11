.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rax, 37
add cl, -84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
adc rax, 310915511
cmovl si, si
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
add dl, 92 # instrumentation
cmovnl rax, rdx
cmovp ecx, edx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
btr rdx, 28
cmovl ebx, edx
cmovb ax, di
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
add dil, dil
neg bl
cmovo dx, si
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rax
cmovnb cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
add cl, -20 # instrumentation
adc dl, dil
adc sil, sil
sbb edx, 17
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rcx
sbb rax, 475459025
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 57
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
bts di, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
xor bl, bl
add edx, edi
xor ax, -22861
sub dil, bl
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
add edx, 89
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 33
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
cmovnb cx, bx
cmp al, dil
btr rax, 187
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 72
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
