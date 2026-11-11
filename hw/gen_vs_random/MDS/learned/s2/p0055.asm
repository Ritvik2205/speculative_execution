.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 24
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
xor sil, cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
or dl, sil
test eax, 1287331633
xor dil, cl
xor dl, cl
test eax, -675944960
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
bt bx, dx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
or dil, al
btr esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
