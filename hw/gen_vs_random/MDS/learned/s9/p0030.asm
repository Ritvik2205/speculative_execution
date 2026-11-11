.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 98
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor bl, -88
or al, 24
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor esi, 90
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
xor sil, -15
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
btr di, cx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
