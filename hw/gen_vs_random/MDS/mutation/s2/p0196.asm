.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
btc rbx, 35
cmovbe bx, di
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
and al, 84
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
jmp .bb_0.1
.bb_0.1:
xor dl, -19
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rax, 4
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
