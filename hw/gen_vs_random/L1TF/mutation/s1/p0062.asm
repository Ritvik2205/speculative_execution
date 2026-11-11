.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -52 # instrumentation
not edx
cmovbe rsi, rax
not rcx
setb dil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
add ax, 1313
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
or al, -57
inc eax
lea rax, qword ptr [rdi + rax + 36248]
lea rax, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rbx]
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
