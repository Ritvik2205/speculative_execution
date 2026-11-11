.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -61
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
xor sil, bl
xor al, 122
and al, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
test al, 91
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and bl, bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
