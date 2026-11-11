.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 14
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 48
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test cl, 53
cmovl rdi, rbx
setns cl
add dl, sil
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
lea rcx, qword ptr [rcx + rsi]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
