.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
bts rsi, rdi
xor dil, sil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
btr di, dx
and dl, dl
or bl, -52
not dl
xor cl, 15
jmp .bb_0.1
.bb_0.1:
xor cl, bl
or sil, -49
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
