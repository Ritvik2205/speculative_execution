.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and bl, 68
or al, cl
xor al, dl
jmp .bb_0.2
.bb_0.2:
or sil, -78
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
jmp .bb_0.4
.bb_0.4:
cmovnp rsi, rdx
xor dl, dil
or bl, 100
or cl, -36
and di, 91
or si, -12
cmovno rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
