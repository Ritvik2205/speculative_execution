.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
lea eax, qword ptr [rsi]
add bl, cl
add cl, 88
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
sbb ecx, 16
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
and ax, 37
sbb dil, bl
xor dl, sil
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
