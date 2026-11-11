.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and al, dl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor dil, 81
or dl, al
or al, 54
test sil, cl
and dil, bl
test bl, sil
bt ax, bx
xor cl, sil
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
