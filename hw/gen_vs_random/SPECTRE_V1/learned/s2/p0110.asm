.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
test rdi, 1238697264
sets cl
not rbx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
btr cx, di
xchg si, bx
mul dil
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edx
mov bl, bl
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
lea rbx, qword ptr [rcx + rcx]
xor eax, -764881786
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 82
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
xor sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
