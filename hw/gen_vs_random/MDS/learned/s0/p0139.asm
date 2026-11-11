.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
or rdx, -48
or sil, -78
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
or bl, -52
and ax, 13090
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
or si, 94
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
bt dx, ax
or dil, -78
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
