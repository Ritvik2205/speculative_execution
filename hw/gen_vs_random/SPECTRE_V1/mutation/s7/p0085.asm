.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], esi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
sbb bl, al
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
add bl, -95
xor al, -119
add al, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
cmovno dx, di
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
movsx di, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
