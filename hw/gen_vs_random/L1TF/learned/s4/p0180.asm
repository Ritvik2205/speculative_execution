.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
not sil
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
cmp cx, 66
sbb dl, al
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
add sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
