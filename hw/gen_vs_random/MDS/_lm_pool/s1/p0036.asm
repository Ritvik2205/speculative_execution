.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or al, 16
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 76
test bl, -114
and dl, dl
xor dx, 98
and dil, -62
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
xor di, 40
test cl, 101
jmp .bb_0.1
.bb_0.1:
test dil, 46
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
jmp .bb_0.2
.bb_0.2:
or rax, -1561934807
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
