.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
or dil, -71
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
or bl, -62
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
test dl, 48
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
xor rdi, -9
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
not cl
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
xor al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
