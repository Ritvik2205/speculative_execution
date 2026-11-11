.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rsi + rsi + 77]
and cx, 91
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
cmp al, sil
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
setno al
sub cl, bl
and bl, al
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
