.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
add sil, cl
test al, 84
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -95
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
cmp rax, -72548874
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
