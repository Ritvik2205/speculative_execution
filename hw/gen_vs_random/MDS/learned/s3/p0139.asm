.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test bl, dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and cl, dl
jmp .bb_0.1
.bb_0.1:
bts rax, 77
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
