.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, al
sbb rdx, rcx
cmovno ecx, ecx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
inc dl
lea dx, qword ptr [rbx + rdi + 13]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 68
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
