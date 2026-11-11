.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
test sil, 17
jmp .bb_0.1
.bb_0.1:
and edi, 23
and bl, 68
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
jmp .bb_0.2
.bb_0.2:
bt rdi, 36
and al, al
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and al, -114
jmp .bb_0.3
.bb_0.3:
xor cl, sil
test cl, cl
xor sil, bl
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
xor rsi, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
