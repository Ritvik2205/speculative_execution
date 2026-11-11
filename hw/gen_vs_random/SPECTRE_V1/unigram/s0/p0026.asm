.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, bx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], -42
bts rdx, 85
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
adc cl, dil
add cl, -109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 83
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 86
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rcx], di
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 66
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
