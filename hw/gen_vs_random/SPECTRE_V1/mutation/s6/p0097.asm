.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea esi, qword ptr [rdx + rbx + 10762]
setnl dl
lea rsi, qword ptr [rdx + rcx + 57579]
cmp al, 46
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
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
and cl, -57
add ebx, -47
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
cmovnbe si, ax
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
