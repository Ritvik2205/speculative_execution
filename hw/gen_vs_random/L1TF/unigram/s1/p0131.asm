.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 65
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -500051843
mul bl
cmovnle esi, edi
and dl, al
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
or al, -87
jmp .bb_0.1
.bb_0.1:
add cx, 59
and rsi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rsi]
setnle bl
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
