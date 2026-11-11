.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
btr si, 208
test cl, bl
or rax, 52
or al, -75
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
xor dl, 34
jmp .bb_0.2
.bb_0.2:
xor dl, sil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
test cl, 73
jmp .bb_0.3
.bb_0.3:
test dl, cl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
jmp .bb_0.4
.bb_0.4:
and rax, 452940266
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
