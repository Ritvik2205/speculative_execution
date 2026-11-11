.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -2019837038
setno bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
btr cx, dx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea si, qword ptr [rcx + rcx + 40728]
cmp dil, 11
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
cmovno rbx, rax
sbb al, -61
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], si
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
or sil, -27
mov bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
imul edi, ebx
bt bx, 27
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
