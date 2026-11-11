.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -88
test bl, -114
or al, -75
test edi, -1252846009
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor dil, -5
and al, 106
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test al, sil
and sil, al
test dil, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 44
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
xor dl, 40
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
