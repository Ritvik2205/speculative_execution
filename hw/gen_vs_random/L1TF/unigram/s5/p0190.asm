.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -32
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 24
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 98
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 9
movzx eax, ax
test rsi, rdi
add dl, dl
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
dec edx
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
xchg rdx, rdi
not ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
