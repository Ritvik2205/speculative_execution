.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovle rdi, rcx
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edi
add al, -76 # instrumentation
adc dl, 50
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rdx + rdx + 46587]
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
cmp cl, 75
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -1185
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], esi
not dx
sbb bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
