.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdi, rdi
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 98
cmovnb rsi, rdi
add bl, cl
lea edx, qword ptr [rcx + rdx]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
movsx ebx, dl
and al, -68
add bl, 68
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 44
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
not di
cmovnb edx, ecx
lea ecx, qword ptr [rbx + rcx + 39]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
