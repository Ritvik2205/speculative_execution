.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
or edx, -1
xor cl, -13
xor al, cl
and sil, dl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or edx, -1
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and al, bl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 53
and al, -54
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
