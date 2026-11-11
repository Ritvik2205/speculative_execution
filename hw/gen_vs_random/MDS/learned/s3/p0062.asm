.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 65
or rsi, 62
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or cl, sil
or bl, -54
xor dil, cl
jmp .bb_0.1
.bb_0.1:
bt ax, di
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 33
cmovnp rax, rdx
or bl, 13
or al, 25
and di, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
