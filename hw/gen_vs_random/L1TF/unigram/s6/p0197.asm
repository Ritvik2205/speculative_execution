.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, al
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], 92
lea dx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
movzx rdx, al
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
bt di, ax
lea rbx, qword ptr [rdi + rax]
movzx dx, cl
lea cx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 70
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
