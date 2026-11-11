.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
lea cx, qword ptr [rdi + rcx + 55876]
sub bl, 15
sbb al, al
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
add sil, -61
xor dl, dil
bts eax, 232
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
