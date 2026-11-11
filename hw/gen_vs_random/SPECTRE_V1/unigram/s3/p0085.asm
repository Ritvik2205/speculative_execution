.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
add sil, 110 # instrumentation
cmovb rbx, rsi
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 47
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 81
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
add cl, -119 # instrumentation
adc sil, cl
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
add cl, al
cmovnle dx, cx
add dl, -89 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 8
or rdi, 68
jns .bb_0.1
jmp .exit_0
.bb_0.1:
bts rdx, rbx
setb dil
lea edx, qword ptr [rax + rbx]
sub sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
