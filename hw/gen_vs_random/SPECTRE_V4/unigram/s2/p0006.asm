.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
imul esi, esi
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
sub rdi, -34
or dl, bl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
sbb dx, 2
movsx eax, di
and rdx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rdx]
test dl, 24
adc rcx, 57
add bl, -84 # instrumentation
cmovb ax, si
mul rcx
add cx, 80
add dl, bl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -103
cmovbe ebx, ebx
cmp al, -78
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rbx
add cl, 14 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
test bl, -16
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 19
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 75
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], ax
adc sil, dil
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
mov edx, -950755477
test dx, ax
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
cmovnbe edi, ecx
dec ax
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
adc bx, ax
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
adc ecx, 114
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 74
or bx, -33
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
