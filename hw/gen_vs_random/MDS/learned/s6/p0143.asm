.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
btr edx, ecx
or al, al
or cl, 6
or bl, sil
and dil, dil
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
test sil, 41
or cl, -36
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
xor rcx, 71
test ebx, -2015966884
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
