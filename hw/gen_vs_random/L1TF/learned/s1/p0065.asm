.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 39
btc rdx, rsi
cmp al, al
cmovnp rcx, rsi
setle dl
movzx ecx, al
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
cmovnl ebx, ecx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 24
add bl, bl
lea ebx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
