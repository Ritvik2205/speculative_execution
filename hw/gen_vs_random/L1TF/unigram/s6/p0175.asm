.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnp al
xor al, dil
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
cmovb si, ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
setz dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
lea di, qword ptr [rdx + rcx + 98]
sub rcx, -90
adc edi, 117
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
or rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
