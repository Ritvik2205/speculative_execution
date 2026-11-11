.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 90
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
cmovnp di, dx
and rcx, -102
lea edi, qword ptr [rbx + rdx + 57]
sub al, 98
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
xor bl, bl
neg eax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
sbb al, -101
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
xor dl, bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 31
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovns cx, cx
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], eax
and rbx, 110
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rax]
cmovnbe rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
adc al, dl
add dil, 82
movzx rax, bl
sbb al, -101
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
imul cl
add dl, -114 # instrumentation
cmovl cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
test al, cl
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
xor ax, 28088
cmp al, 114
xor esi, ebx
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
cmovl rdi, rcx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
