.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
bt ax, si
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
lea bx, qword ptr [rdx]
lea edx, qword ptr [rdi + rcx]
setnle cl
add bl, 37 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 11
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
setle dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
sbb rbx, -117
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
add sil, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
