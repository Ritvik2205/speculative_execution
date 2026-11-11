.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 74
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
xor cl, 24
xor sil, bl
bt ax, cx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and bl, 68
or bl, 13
or al, dl
and dil, -62
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
or al, -78
or al, 37
or al, sil
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
