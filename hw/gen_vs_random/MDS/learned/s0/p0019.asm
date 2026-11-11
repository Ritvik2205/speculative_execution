.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
or cl, 39
jmp .bb_0.1
.bb_0.1:
or cl, 6
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
test al, bl
test sil, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
test bl, 65
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and sil, sil
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
