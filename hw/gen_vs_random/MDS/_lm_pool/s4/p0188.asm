.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -2
or rcx, -17
or bl, 127
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and al, cl
cmovle dx, cx
or bl, sil
and cl, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
jmp .bb_0.2
.bb_0.2:
xor al, -19
or sil, -49
or ax, -14271
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
bt si, di
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
