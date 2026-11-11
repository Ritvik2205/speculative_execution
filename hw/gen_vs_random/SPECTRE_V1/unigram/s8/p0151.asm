.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rsi]
test cl, -62
lea dx, qword ptr [rcx + rax + 61]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
adc dl, dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
lea dx, qword ptr [rsi + rdx]
or rdi, 68
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
test eax, 133988823
lea di, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
sbb cl, sil
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
