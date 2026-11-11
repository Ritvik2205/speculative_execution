.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 37
not sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test al, 66
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
bt si, bx
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rax, rbx
jmp .bb_0.1
.bb_0.1:
test bl, -14
test al, 127
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or rax, 1461812833
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
