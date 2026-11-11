.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, 122
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 12
lea rax, qword ptr [rax + rdx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 35
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
lea rbx, qword ptr [rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmovle bx, bx
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rcx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rcx]
cmovle ecx, ebx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdx], cx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
