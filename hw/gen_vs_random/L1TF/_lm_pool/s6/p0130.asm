.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
lea si, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
movsx esi, sil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
and ax, 37
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
