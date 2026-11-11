.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, cx
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
test al, -70
jb .bb_0.2
jmp .exit_0
.bb_0.2:
adc sil, dil
cmp sil, -11
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
