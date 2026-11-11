.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
or eax, edi
xor rbx, 20
lea rcx, qword ptr [rax]
test dil, sil
btr ax, 185
and rax, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rax]
bt rsi, rcx
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
lea rdx, qword ptr [rax + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
cmp dl, bl
or cl, 45
add cl, -103 # instrumentation
cmovnl rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
