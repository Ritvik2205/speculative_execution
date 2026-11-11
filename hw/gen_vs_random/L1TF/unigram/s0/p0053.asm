.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 89
xor ax, dx
sub rcx, rdx
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 89
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
sub al, dl
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor dil, dl
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 97
btc si, di
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
