.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle ecx, ecx
and dl, -73
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and bl, 68
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
test dil, sil
sbb al, 67
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
xor dl, bl
jmp .bb_0.3
.bb_0.3:
test rax, 1214712583
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
xor dl, 8
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
