.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 9
mov sil, dl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
or eax, -126
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
xchg dil, cl
jmp .bb_0.2
.bb_0.2:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
add al, -109
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
lea eax, qword ptr [rdi]
test dl, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
