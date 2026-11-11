.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, si
test ax, dx
xor edi, 46
jmp .bb_0.1
.bb_0.1:
test al, cl
and al, dl
bts rbx, rax
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
or bl, dl
or cl, dl
and dil, 125
and cl, -6
test dil, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
test bl, -14
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
