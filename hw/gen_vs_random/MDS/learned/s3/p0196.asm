.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
xor al, 9
and dil, 125
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
bts rax, 77
and si, bx
jmp .bb_0.1
.bb_0.1:
test bl, al
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and cl, -6
and al, -54
xor sil, -15
xor dl, 34
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
