.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or al, bl
and eax, 454700988
and al, -54
or sil, -78
and dx, 60
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and sil, -9
xor dl, -59
btr di, si
bt ax, bx
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
jmp .bb_0.1
.bb_0.1:
test bl, sil
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
