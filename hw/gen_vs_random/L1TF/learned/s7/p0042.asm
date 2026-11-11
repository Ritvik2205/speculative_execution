.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
sub rcx, -121
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 26
and dl, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rsi]
jp .bb_0.3
jmp .exit_0
.bb_0.3:
adc eax, 457059541
or cl, 105
xor al, sil
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
add di, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
