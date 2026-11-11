.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and dx, 61
add dil, 126 # instrumentation
cmovnl cx, di
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 65
add bl, 124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
not dx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
mul sil
movsx edi, dil
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rax], rax
btr di, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
