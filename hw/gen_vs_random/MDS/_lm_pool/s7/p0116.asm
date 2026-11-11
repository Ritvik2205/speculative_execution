.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test bl, -9
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
jmp .bb_0.3
.bb_0.3:
test dl, al
xor ax, 31969
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
