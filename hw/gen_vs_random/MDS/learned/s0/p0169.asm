.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, edx
btr bx, cx
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and dl, -73
jmp .bb_0.1
.bb_0.1:
xor al, 9
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
test dl, 9
xor dl, al
test dl, al
and dl, -73
test al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
