.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
sbb al, al
cmovno rcx, rax
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
add rcx, 23
btr rax, rdi
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], bl
movzx eax, dx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
imul rdi, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
