.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
test bl, cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
xor bl, cl
test bl, -114
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
not cl
xor si, 91
bt cx, ax
or al, dil
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
