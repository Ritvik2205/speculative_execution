.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -116
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
mov al, -26
cmovp rcx, rbx
lea ebx, qword ptr [rdx + rbx]
and rdi, -60
bt edi, 230
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
add sil, -111
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -70
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
setl bl
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -11
adc ebx, edx
cmovo ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
