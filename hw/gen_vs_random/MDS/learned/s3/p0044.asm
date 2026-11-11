.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
or bl, 127
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
bt rax, 57
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
or cl, 7
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
test rax, rbx
jmp .bb_0.5
.bb_0.5:
test cl, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or cl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
