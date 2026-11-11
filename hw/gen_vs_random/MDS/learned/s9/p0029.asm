.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 83
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
bts rbx, 25
not sil
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
or cl, sil
and al, -103
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
or al, 30
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and al, 87
test al, 66
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
