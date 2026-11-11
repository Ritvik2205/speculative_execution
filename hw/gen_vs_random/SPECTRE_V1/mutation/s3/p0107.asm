.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, -1128038253
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
lea ax, qword ptr [rax]
lea cx, qword ptr [rsi + rdx + 61792]
not cx
lea ax, qword ptr [rcx + rbx + 26263]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
xor cx, cx
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
