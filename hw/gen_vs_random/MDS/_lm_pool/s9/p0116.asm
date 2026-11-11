.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
and dl, dl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test cl, bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
test al, 66
xor si, 91
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and al, cl
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
test al, cl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
test dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
