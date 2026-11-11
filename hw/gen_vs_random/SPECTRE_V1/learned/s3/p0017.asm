.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rdi, -60
sub esi, eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 89
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
cmovs cx, dx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
adc rdi, -75
adc rax, 55
setno dil
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 10
lea rsi, qword ptr [rax]
sub ecx, 4
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
lea esi, qword ptr [rax]
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
xor rsi, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
