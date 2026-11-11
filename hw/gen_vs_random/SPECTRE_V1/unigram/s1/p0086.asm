.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
add dl, -42 # instrumentation
lea ecx, qword ptr [rdx]
lea dx, qword ptr [rsi]
cmovno rbx, rcx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
bts rdi, 17
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
setnb al
xchg rdx, rdx
or sil, 3
add eax, edi
sub al, cl
and dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
