.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, si
add dl, -70
cmovno ax, bx
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
sub al, bl
xor cl, al
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
xor al, sil
sbb cl, bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
