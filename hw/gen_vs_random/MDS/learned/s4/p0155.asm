.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -86
or al, -17
and dl, dl
or cl, sil
xor rsi, -117
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
test ebx, -2015966884
test di, 29
or ax, 16560
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or al, -22
or cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
