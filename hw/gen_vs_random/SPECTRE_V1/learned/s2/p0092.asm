.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, bl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 75
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rax]
dec al
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
