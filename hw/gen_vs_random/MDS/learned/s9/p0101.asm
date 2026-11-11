.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
or sil, al
test al, dl
xor al, sil
and dil, -62
xor rdi, -9
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
cmovnp rax, rbx
xor sil, al
jmp .bb_0.1
.bb_0.1:
test cl, dil
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 41
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and esi, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
