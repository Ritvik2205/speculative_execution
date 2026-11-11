.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
setb cl
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
btr rcx, rbx
inc cx
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
lea bx, qword ptr [rax + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 33
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 83
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
adc ebx, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
