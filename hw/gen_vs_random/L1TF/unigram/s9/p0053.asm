.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 54 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
cmovs edx, edi
sub al, -3
test rsi, rbx
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
or cl, dl
sbb dl, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
