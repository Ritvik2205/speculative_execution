.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 85
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
sets cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 12
cmovnl eax, esi
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
js .bb_0.1
jmp .exit_0
.bb_0.1:
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
test al, 70
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 84
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
