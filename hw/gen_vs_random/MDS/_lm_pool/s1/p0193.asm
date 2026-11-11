.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and bl, bl
and cl, bl
xor al, 55
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rbx, 65
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xor cl, 83
test rdi, 12
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
