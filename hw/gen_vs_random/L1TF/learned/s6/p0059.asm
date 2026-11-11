.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
cmovno ax, di
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 61
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
xchg bl, dil
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
