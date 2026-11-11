.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], dx
setp sil
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
xor dil, dl
seto bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
