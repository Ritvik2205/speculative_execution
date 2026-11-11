.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
bt rbx, rbx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
test dl, 114
sub bl, 56
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
btr cx, ax
or dx, 24
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 99
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
mul ax
sub al, 29
sub edx, ebx
cmovbe edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 75
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
and cx, -117
xor rsi, -3
xor al, -60
bt rdx, 55
and dil, -120
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
sub edi, 28
or dl, -26
sub al, 0
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 77
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
sbb ebx, eax
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
imul rdx, rbx, -19
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
xor di, dx
xor al, -15
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
mov cx, -22668
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
