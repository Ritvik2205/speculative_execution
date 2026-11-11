.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
xor di, ax
btc rax, rdx
cmp rdi, 28
cmovl rdx, rsi
add dx, 38
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 64
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 13
cmovbe ax, cx
xor rbx, -99
cmovnb eax, edx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
or eax, edi
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rbx
imul sil
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
sub sil, -35
test bl, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
adc rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
sub ecx, esi
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
cmovb dx, bx
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
cmovnp ax, bx
neg al
and rsi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rsi]
test al, al
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
sub cl, cl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and dil, -61
btc rcx, rdi
test al, -38
add dl, -25 # instrumentation
cmovs rdi, rax
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
add eax, 1017938146
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
or dl, -26
xor edx, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
