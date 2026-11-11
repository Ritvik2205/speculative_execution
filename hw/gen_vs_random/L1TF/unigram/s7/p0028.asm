.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
add bl, 93 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 49
add al, -57 # instrumentation
cmovo rdi, rax
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 7
add bl, -54 # instrumentation
setz dil
jmp .bb_0.1
.bb_0.1:
imul rdx, rdi
adc al, cl
mul rdx
cmovp di, ax
add al, -9 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 41
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
xchg rdi, rsi
add si, -5
add dl, -93 # instrumentation
cmovb rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
