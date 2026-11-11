.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 8
btc si, 43
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
test bl, -114
or al, dl
test bl, -14
or bl, 13
or dl, -97
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
or dl, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
