.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
test bl, -114
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
bt cx, 22
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor al, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rax, 4
or dl, 85
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
