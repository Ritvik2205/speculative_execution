.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
and al, sil
or rsi, 53
and cl, sil
and dil, dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
xor dil, dl
xor al, 55
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
btr si, 208
xor dil, -124
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor dl, 8
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
