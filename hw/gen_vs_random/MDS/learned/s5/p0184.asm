.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and si, -121
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
xor dl, cl
xor al, dil
test bl, dl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test dl, bl
or dl, dl
xor edx, 17
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
bt di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
