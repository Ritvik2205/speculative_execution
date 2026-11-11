.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
add dx, 64
and bl, cl
sub dl, 41
and bl, 89
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
