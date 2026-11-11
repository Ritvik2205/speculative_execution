.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -6
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
mov al, -26
cmovp rcx, rbx
lea ebx, qword ptr [rdx + rbx]
and rdi, -60
bt edi, 191
add cl, -103 # instrumentation
cmovnl rdx, rax
xor bx, ax
add edi, esi
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
add ecx, edx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
imul ax, di, 114
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
jmp .bb_0.1
.bb_0.1:
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
add dl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
lea edx, qword ptr [rdi + rbx + 38925]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
sub di, 10
movsx rsi, cl
setp al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
