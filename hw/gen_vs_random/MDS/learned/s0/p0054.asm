.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
test ax, di
xor dil, al
or al, dl
and dl, -73
bts ecx, 3
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
test al, 91
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and al, 106
or al, dil
or dl, al
test bl, al
xor al, 122
and bl, 68
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
