.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 69
add bl, -15 # instrumentation
movzx si, bl
lea ax, qword ptr [rdx + rax + 36518]
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdi
add cl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 81
or dil, cl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
and rsi, rsi
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rbx
lea eax, qword ptr [rdx + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rsi]
xor sil, bl
add al, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
