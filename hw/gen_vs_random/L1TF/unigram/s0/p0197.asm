.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rcx, rdi
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
xor dil, cl
add cl, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
btc eax, ecx
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 15
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
add rcx, rbx
and rbx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ecx
add dl, -117 # instrumentation
lea rsi, qword ptr [rdx]
lea rax, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
