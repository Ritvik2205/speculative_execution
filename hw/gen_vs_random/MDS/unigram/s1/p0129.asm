.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
bts edx, 189
xor ax, dx
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and esi, ebx
and rcx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rcx]
cmovnb rcx, rdi
and dl, -5 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
or bx, 35
xor esi, 75
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
test rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
test bl, -9
and rbx, 65
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
btc rbx, rbx
and bx, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
