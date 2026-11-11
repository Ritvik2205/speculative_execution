.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
test dl, -85
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
xor al, -4
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
or bl, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
xor al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
