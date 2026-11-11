.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
xor rdi, -80
or al, bl
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rax]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 20
or al, -48
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
