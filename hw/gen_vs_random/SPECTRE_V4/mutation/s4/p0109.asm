.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -9762
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
cmovo ax, ax
sub eax, -865916088
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
cmp rdx, rcx
cmovnbe rbx, rsi
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
add al, 40
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
bt bx, di
or esi, 32
and eax, -1555813586
imul edx, ebx, 1
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
mov bl, dl
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
sub al, 59
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xor ax, 13329
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
dec dx
or dl, cl
and di, dx
dec al
mov sil, sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -79
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
imul ax, di, 101
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
not rcx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
sub ax, 17434
btc rax, rdi
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
