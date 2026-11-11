.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and dl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
xor cl, 24
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 40
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
bts rdi, 130
and rdi, 97
cmovle ebx, edx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 90
and cl, 126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and cl, -34 # instrumentation
cmovs rdx, rcx
and dl, dl
and ebx, 72
and bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
