.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rax, -636362975
and al, 84
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
xor dil, bl
or cl, 7
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
test dil, -80
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
xor dl, sil
and di, 99
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
xor bl, -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
