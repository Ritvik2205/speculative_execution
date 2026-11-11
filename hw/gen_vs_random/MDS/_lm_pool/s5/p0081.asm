.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
xor rax, -270810088
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or al, bl
and al, bl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
jmp .bb_0.1
.bb_0.1:
xor rdx, -59
xor sil, dil
xor rax, 459999114
bts rax, 77
btr bx, ax
or cl, -36
or cl, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
