.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -1571963467
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], -31
xchg ax, si
add edx, 24
test cl, -24
add cl, -42 # instrumentation
lea cx, qword ptr [rax + rbx]
lea rcx, qword ptr [rcx + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 0 # instrumentation
adc al, sil
add bx, -65
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rsi
add dl, -86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
