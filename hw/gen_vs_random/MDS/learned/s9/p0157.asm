.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
or cx, -42
and cx, -8
bts rsi, rcx
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and al, bl
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and eax, 461212071
xor al, bl
xor bl, 67
and dl, dil
or cl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
