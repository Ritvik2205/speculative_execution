.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, dil
lea bx, qword ptr [rdx]
and al, 33
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and di, 2
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
