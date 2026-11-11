.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rcx
cmovs bx, di
adc dl, bl
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
lea ebx, qword ptr [rdx + rbx]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
lea rax, qword ptr [rcx]
movsx rbx, dx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add rbx, 33
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
xchg dl, bl
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 59
lea di, qword ptr [rsi + rdi]
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
