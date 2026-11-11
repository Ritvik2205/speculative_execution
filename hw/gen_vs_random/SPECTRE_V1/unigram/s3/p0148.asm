.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -72
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 85
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 30
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rsi + rax + 96]
lea edx, qword ptr [rbx]
mov al, al
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
btr bx, si
sets cl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
