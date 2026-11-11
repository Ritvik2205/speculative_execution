.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
or al, 24
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
xor al, dil
jmp .bb_0.1
.bb_0.1:
test al, 91
xor dl, sil
or cl, bl
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
