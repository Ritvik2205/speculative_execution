.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -70
and dl, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or al, 54
and dil, -62
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
or sil, -78
and al, -55
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
bts ecx, 3
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
not al
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
test dl, 48
and rsi, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
