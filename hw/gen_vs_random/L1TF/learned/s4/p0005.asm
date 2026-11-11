.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rdi, rdx
xor cl, 89
lea si, qword ptr [rax]
test al, -32
cmp dl, al
test bl, 12
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 61
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
or al, -5
cmp al, 27
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
