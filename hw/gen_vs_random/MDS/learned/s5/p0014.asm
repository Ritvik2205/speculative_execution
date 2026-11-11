.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
test al, dl
xor sil, -15
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
or dil, -78
and di, 91
and rdx, 58
test bl, -14
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
test eax, 343548072
or cl, sil
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
