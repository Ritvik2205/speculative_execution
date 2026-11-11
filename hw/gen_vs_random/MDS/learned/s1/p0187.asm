.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, cx
or dil, -78
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
xor cl, 15
or dl, -31
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and cl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test al, 66
jmp .bb_0.1
.bb_0.1:
or al, -24
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor rax, -345061362
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
