.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 49
test esi, 1857129931
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rax, -2039117613
and cl, -111
or cl, 39
or cx, -42
and cl, dl
test al, -7
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
test al, sil
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
