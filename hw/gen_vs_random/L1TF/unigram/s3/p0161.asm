.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
test bx, 77
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ebx
cmp cl, cl
add dl, -121 # instrumentation
movsx cx, dl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], dx
cmovo edx, eax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
cmovnbe edx, ebx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 47
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
