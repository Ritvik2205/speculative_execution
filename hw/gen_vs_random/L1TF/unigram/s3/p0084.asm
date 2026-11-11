.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, 79
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
add bl, 40 # instrumentation
cmovp rdx, rbx
xchg bx, si
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
sub bl, 33
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
