.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rcx], eax
not dil
test dl, bl
cmovle di, dx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or cl, 6
and al, 87
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
or al, -24
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
