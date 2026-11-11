.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
and bl, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
test rbx, 76
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test al, dil
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
xor dl, -19
jmp .bb_0.1
.bb_0.1:
test al, cl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
or sil, dl
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
