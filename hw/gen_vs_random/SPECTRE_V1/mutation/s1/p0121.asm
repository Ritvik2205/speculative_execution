.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, ebx
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
xor rax, 620504108
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ecx
add bl, 70
xor al, 54
sbb bl, al
cmovno dx, di
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
movsx di, bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
