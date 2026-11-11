.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -74
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
movsx di, bl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
sbb bl, al
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
add al, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
cmovno dx, di
add bl, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
