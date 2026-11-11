.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
cmp rax, 834498504
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
setb sil
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
sub dl, -49
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
test bl, 84
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
