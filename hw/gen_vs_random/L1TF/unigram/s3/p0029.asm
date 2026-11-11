.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
mov eax, 72
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 22
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
mov rcx, rax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
