.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
xor al, cl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rsi + rcx + 25300]
jmp .bb_0.2
.bb_0.2:
test al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
