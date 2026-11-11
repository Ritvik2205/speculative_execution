.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dl
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 76
add cl, -23 # instrumentation
cmovl si, cx
seto bl
nop
setnb bl
setnz bl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
cmp al, al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -16
lea esi, qword ptr [rdx]
lea ax, qword ptr [rax + rdi + 98]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ebx, 35
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
