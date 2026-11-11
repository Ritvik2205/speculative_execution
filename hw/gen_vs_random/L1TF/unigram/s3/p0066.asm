.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
cmp sil, -11
dec bx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rcx
cmp esi, esi
add dl, -8 # instrumentation
lea ecx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
bt rcx, 38
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
or esi, edx
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
