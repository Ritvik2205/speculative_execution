.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
add dl, 47
and sil, sil
sub dx, -23
or bx, 9
xor rdx, 66
sub bl, dl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
and dil, -93
xchg al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
