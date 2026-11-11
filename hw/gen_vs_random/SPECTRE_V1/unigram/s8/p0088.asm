.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
add dl, 24 # instrumentation
lea rdx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor sil, cl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
movzx si, sil
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
add al, 120 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
xor cl, 71
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 52
lea rcx, qword ptr [rbx]
and rsi, 86
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
