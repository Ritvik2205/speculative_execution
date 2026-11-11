.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 62
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and al, 14
and al, 87
xor dl, -19
xor dl, sil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test dl, al
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
xor bl, al
and rsi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
