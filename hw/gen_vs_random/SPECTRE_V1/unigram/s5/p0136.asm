.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edx, eax
sub al, cl
add eax, -55403434
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -16 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], si
setbe bl
add bl, sil
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
bt si, cx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
setnle bl
add al, -61 # instrumentation
seto al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
