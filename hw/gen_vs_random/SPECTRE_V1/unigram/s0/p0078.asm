.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 28 # instrumentation
setnz al
cmovnz rdx, rdi
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
mul di
sbb dx, 85
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 75
add bl, 36 # instrumentation
setnl bl
adc al, 98
cmp dil, al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
