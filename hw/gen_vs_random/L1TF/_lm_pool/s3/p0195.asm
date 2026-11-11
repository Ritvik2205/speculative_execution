.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
inc bl
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
cmovnp si, cx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
and bl, 89
jmp .bb_0.2
.bb_0.2:
cmovnp rdi, rdx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
xor si, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
