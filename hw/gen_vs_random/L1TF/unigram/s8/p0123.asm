.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 89 # instrumentation
adc sil, al
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 56
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 73
jmp .bb_0.1
.bb_0.1:
sub al, 9
sub cx, 7
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
xchg bl, bl
bts rbx, rdx
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
