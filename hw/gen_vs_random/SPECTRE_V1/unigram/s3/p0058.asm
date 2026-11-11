.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
add dl, -95 # instrumentation
lea dx, qword ptr [rbx + rbx + 62]
sub al, -82
nop
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
btr dx, 23
and rbx, 8
lea rsi, qword ptr [rcx + rcx + 18]
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
adc dl, -49
sub rdi, 7
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
