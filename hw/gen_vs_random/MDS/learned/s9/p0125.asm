.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, cx
bt edi, ebx
test sil, -55
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
or sil, sil
bt ax, si
or al, cl
or di, 100
or cl, -77
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
test si, 92
test eax, 298249463
xor di, -83
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
