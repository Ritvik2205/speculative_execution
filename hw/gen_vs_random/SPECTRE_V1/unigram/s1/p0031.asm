.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rax + rdi]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or cl, -98
movsx ax, bl
btc rdx, rcx
sub rdx, 89
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], cx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rdi + rdx]
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
and dx, 61
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
lea eax, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
