.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
cmp ax, -21455
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and di, 23
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 48
sub dl, -34
jmp .bb_0.3
.bb_0.3:
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
