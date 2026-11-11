.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
xor cl, sil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and sil, -56
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
xor cl, 98
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
btc eax, 40
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test dil, dl
xor dil, -70
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
