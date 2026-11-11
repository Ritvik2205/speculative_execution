.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
add bl, dl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
bt rdi, rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
mov dil, cl
and bl, -43
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
