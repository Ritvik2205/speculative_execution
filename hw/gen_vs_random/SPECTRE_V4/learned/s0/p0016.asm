.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
adc dl, cl
btr bx, ax
cmovb bx, di
xor dl, 57
cmovnp ax, cx
cmp rax, 2115020203
add dil, 82
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
movzx rbx, al
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
cmovnp ecx, edx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
lea cx, qword ptr [rax + rax]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
add dl, 31 # instrumentation
cmovnl cx, cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and eax, -37
or dl, dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 29
sub cl, cl
movzx ecx, sil
cmovnbe rax, rcx
add bl, -72
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
movzx rax, dl
sbb al, 32
bt esi, 227
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 81
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], bx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
mov rax, -8696242625349627833
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
dec bl
xor eax, -437098167
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
lea ax, qword ptr [rdi]
sbb dx, si
cmp dil, dl
and eax, -37
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
