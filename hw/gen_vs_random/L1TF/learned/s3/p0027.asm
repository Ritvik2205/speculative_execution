.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
lea rax, qword ptr [rdi]
dec dl
test al, -104
add bl, 68
and esi, 92
and al, -68
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
add cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
