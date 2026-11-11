.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx]
cmp rax, 921820217
and dx, si
and rdi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], eax
cmovp rbx, rdi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdx + rdx]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
cmovle rcx, rsi
and sil, cl
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
add dl, -78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
