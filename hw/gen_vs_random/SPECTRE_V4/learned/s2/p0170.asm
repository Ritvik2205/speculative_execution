.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -47
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 66
sbb cl, bl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
adc eax, -79
sbb cl, bl
test edi, -1249897727
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
bts rsi, 95
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 67
dec rbx
imul di, si
cmovp di, si
and sil, al
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
and sil, dl
cmovl rcx, rdx
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
cmovnbe rax, rbx
btc di, cx
sbb cl, -104
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt esi, ebx
and dl, sil
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
add ebx, edx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
mov cl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], dx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
sub al, 99
cmp cl, 54
cmovnb bx, bx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
movzx rcx, dx
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
