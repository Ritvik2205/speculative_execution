.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg dx
or dx, 0b1000000000000000 # instrumentation
bsr ax, dx
cmovns rax, rcx
imul esi
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, dl
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
add dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
inc bl
xor cl, -91
sub ax, -17837
test ebx, -1465665890
setno cl
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
