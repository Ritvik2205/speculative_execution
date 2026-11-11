.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
test al, 66
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
test edx, -1561252782
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
xor bl, al
or bl, 100
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
test dl, -85
or al, dil
xor bl, cl
and dil, -39
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and sil, bl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
