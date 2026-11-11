.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, 29
or dil, cl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
setb dil
lea rcx, qword ptr [rcx + rdi]
or rcx, 19
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 12
lea edi, qword ptr [rdx + rcx + 79]
add bl, 21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 63
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 85
xchg rax, rdi
and bl, bl
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
