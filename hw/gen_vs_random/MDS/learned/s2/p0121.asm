.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
xor dil, 8
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
test eax, 298249463
and al, -54
and cl, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
xor cl, 15
test al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
