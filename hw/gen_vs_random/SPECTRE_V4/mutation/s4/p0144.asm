.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
add bl, -74 # instrumentation
cmovnp rbx, rdx
or al, -16
adc edx, -86
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
xor rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
mov si, -8007
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
mov dl, al
or rax, 1042095162
sub bl, -98
and cl, cl
cmovbe rdi, rcx
and bl, dil
and al, dl
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
cmovs rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
mul cl
movzx ax, cl
imul bl
add al, 116 # instrumentation
cmovns ebx, esi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
cmp rax, 40
sub rdi, rax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
adc al, dl
mul ecx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
xor eax, 167244411
or ax, -26182
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
add cl, -122 # instrumentation
cmovp bx, bx
sbb al, dl
bt ecx, 177
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
