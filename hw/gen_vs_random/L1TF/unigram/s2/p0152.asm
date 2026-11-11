.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
add dl, -76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 44
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rsi
bts ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
setnl cl
lea rax, qword ptr [rdx + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
add al, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
add esi, edx
cmp sil, -110
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
