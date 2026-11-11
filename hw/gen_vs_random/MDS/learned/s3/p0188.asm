.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
bt edi, ebx
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
xor bl, -88
and al, cl
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and sil, sil
or bl, al
or cl, 6
jmp .bb_0.1
.bb_0.1:
test al, cl
btr ax, bx
not al
and cl, dil
or cl, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
