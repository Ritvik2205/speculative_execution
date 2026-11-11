.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and ax, -10351
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 56
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
bts rbx, rdi
cmovnp rax, rcx
and al, -55
lea edi, qword ptr [rdx]
and dil, dil
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
xor ax, -6793
or al, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
