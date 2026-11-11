.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 46
test bl, al
bt ax, 77
setno sil
sbb sil, 126
lea esi, qword ptr [rdx + rsi + 32]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
not rdi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 43
setnp bl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
cmovno rax, rdi
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
