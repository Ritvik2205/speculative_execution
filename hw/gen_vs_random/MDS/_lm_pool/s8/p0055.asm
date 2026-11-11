.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
test cx, 401
xor rdi, -9
test sil, cl
and cl, -71
and sil, dl
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
or al, -61
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
or dl, bl
and rsi, 64
test al, dl
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
