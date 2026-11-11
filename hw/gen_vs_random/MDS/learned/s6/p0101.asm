.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and bl, sil
test al, -81
and al, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
or rbx, -77
test sil, 17
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
test cl, bl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and dl, dl
test dl, -85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
