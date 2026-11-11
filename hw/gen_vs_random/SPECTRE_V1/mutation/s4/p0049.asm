.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
sbb cl, al
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
cmovnle esi, edx
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
or al, 100
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -63
lea dx, qword ptr [rsi + rdi]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
add dl, cl
and al, -23
jmp .bb_0.2
.bb_0.2:
add dl, 52 # instrumentation
sets dil
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
add bl, -104 # instrumentation
lea rbx, qword ptr [rdi + rax + 43013]
adc bl, 88
cmp cl, cl
inc cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
