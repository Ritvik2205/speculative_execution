.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 104 # instrumentation
mov edi, 75
xor rsi, 34
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
or dil, al
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
test al, -70
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], eax
sbb eax, -403815802
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
