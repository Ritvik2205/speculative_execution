.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rbx]
sub dil, cl
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
mul ax
bts ecx, 0
cmovp edi, edi
inc dil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 36
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dl
sub dl, dil
mul al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rcx]
bt cx, dx
bt rax, rax
not rdx
cmp edi, 3
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
cmovle bx, bx
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
or edx, ecx
cmovb rdx, rcx
and rax, 0b1111111111111 # instrumentation
and dil, al
test sil, 16
imul rdx, rbx
xor rcx, rbx
movzx dx, dl
not bl
or al, al
sub rax, -1881584175
cmovbe rbx, rcx
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
mov al, dil
bts rdx, 15
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 36
mov ax, 31802
mul dl
movzx cx, bl
neg rdx
mov dx, ax
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
