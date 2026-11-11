.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -125 # instrumentation
cmovb edx, ebx
setno cl
and rsi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rsi]
add cl, 22 # instrumentation
cmovns rax, rdx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdx]
lea rsi, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
test esi, 29
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], bl
bt edx, 82
cmovl rdi, rsi
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 14
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
