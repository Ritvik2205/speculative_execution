.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
btc ebx, 11
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 54
xor bl, -5
or di, 66
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rcx + rbx]
xor di, 98
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
and al, -68
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
