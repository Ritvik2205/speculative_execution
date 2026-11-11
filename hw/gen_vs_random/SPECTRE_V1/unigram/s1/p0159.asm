.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 100
bt ecx, edi
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 24
lea rbx, qword ptr [rdx + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
bt rax, rcx
xchg rcx, rcx
xor dil, 77
sub al, 10
and rbx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rbx]
setno sil
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
