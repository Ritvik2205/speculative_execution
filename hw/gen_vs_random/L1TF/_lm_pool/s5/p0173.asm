.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 72
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test al, cl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or eax, -401020526
not esi
or rbx, 18
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
or sil, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
