.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
btr cx, dx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
cmovnb edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 69
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
and dil, -103 # instrumentation
cmovbe di, di
test dl, 48
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
cmovnl ebx, ecx
or di, 0b1000000000000000 # instrumentation
bsf si, di
xor bx, 40
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and dil, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
test dil, -51
and esi, 7
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
