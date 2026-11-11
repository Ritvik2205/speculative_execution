.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, dx
or sil, 52
add cl, -119 # instrumentation
adc sil, dil
cmovnle ecx, edx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rbx
lea ebx, qword ptr [rdi + rbx + 75]
lea ecx, qword ptr [rbx + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
cmovb ax, bx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
add dl, -86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
lea eax, qword ptr [rdx + rbx + 87]
add bl, 39 # instrumentation
cmovo edx, eax
lea dx, qword ptr [rbx + rdi + 2]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
