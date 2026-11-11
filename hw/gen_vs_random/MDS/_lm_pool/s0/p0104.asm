.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 8
xor al, -4
or al, al
or al, 74
or al, cl
and bl, 68
test eax, 1729060510
test rbx, 24
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 83
xor al, 9
xor sil, 110
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
or sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
