.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
xor al, 122
xor al, -26
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
xor cl, dl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
xor rdi, -9
test bl, -14
xor eax, -885380838
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
