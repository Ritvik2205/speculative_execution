.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
cmovle dx, bx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 96
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
xor rax, -1499464454
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
xor sil, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 78
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
xor rax, -1657511731
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
test al, -7
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
test cl, -113
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
