.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb bl, bl
or rsi, rcx
lea edi, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
lea ecx, qword ptr [rbx + rbx + 2102]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
lea edx, qword ptr [rbx + rbx + 24069]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
lea rdx, qword ptr [rsi]
add bl, 48 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 11
add al, al
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
add bl, 107 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 45
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
