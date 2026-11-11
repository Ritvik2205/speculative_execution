.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
lea rbx, qword ptr [rax + rdi + 62]
cmp bl, cl
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
cmp al, bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, -47
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
and dil, bl
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
