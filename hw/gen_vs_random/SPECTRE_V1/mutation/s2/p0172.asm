.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea esi, qword ptr [rdx + rbx + 10762]
setnl dl
lea rsi, qword ptr [rdx + rcx + 36993]
cmp al, 77
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
lea cx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -55 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdi, rbx
or dil, 98
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
cmovnle dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
