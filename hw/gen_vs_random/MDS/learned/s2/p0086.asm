.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and bl, bl
or dl, -89
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
cmovno bx, si
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
btc dx, 67
jmp .bb_0.1
.bb_0.1:
or al, 74
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
jmp .bb_0.2
.bb_0.2:
and dl, bl
xor dil, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
