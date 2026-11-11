.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
bts eax, 222
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or rsi, 86
test cl, cl
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and al, al
test edx, -1561252782
and rbx, 65
and edx, -44
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
