.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 24
xor ax, -5889
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and al, bl
and al, al
xor al, dl
jmp .bb_0.1
.bb_0.1:
test sil, -55
jmp .bb_0.2
.bb_0.2:
test bl, dl
and ax, 13090
and al, sil
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and bl, al
xor bl, dil
and al, bl
or ecx, 52
or si, 94
bt ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
