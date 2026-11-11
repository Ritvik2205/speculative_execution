.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
sub sil, dl
xor bl, 38
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and al, -68
add dl, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
lea edx, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
sub bl, -96
cmp al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
