.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
bts edx, 26
or dl, cl
cmp bx, 7
cmovnbe rbx, rdi
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 44
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
mov cx, 3
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 51
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
add al, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 80
xor al, 29
bt si, 27
sub si, bx
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
sbb bl, 57
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
sbb cx, 9
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
sbb dx, 83
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
add cl, 8 # instrumentation
adc dl, dil
and rcx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rcx]
dec rbx
test al, dil
bt edi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
movzx ebx, dl
imul rax, rsi
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 62
dec dl
add cl, 1
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 11
cmp al, 70
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
