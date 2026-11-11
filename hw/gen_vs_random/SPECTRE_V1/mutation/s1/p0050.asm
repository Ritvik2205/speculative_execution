.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
cmovz ecx, eax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], di
dec rdx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and al, -54
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
sub bl, -6
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
