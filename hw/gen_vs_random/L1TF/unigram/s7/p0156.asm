.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
sub al, -47
xor dl, dl
and dil, -82
setle sil
adc ax, 87
btr bx, dx
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
add dl, 108 # instrumentation
setl dl
sub dl, dil
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
add al, -65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
cmp dl, dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
