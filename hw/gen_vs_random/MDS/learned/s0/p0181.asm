.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, cx
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
xor sil, -126
btr rdx, 56
and dil, -62
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
test rax, 1214712583
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 13
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
xor al, 34
and rax, 1250429750
bt ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
