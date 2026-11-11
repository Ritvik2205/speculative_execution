.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 27
and rsi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rsi]
add dl, -125 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 88
mov si, 79
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
neg ecx
setns sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
mul dl
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
mov ebx, 25
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
