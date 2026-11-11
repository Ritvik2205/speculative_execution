.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 11
sub bl, cl
add cl, -127
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
test sil, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
