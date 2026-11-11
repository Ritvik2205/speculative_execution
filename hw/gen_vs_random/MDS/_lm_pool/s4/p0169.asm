.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
xor dl, 40
xor dl, -43
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
or rax, -141551502
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and dx, 3
or dl, -89
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
xor eax, 1640090871
or cl, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
