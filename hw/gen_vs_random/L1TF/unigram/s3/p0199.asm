.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
lea ebx, qword ptr [rcx + rbx]
cmovl edi, edx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
add bl, 111 # instrumentation
cmovs rsi, rsi
add cl, -73 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdi]
add al, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add bl, -77 # instrumentation
cmovns bx, di
setnp cl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
cmp esi, 110
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
