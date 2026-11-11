.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
xor bl, sil
xor al, -89
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
bts rsi, 221
xor di, 40
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
xor al, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and dil, al
xor dl, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
