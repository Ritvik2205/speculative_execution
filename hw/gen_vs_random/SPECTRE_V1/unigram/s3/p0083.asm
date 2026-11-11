.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
or si, 0b1000000000000000 # instrumentation
bsf ax, si
and cl, sil
adc bl, dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 7
not cl
add sil, 45 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
sub rdi, 44
xchg rcx, rcx
add dl, -124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
test bx, bx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
cmp sil, dl
test al, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
