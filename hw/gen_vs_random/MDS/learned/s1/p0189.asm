.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, -110
test bl, 65
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
or al, -58
test rbx, 29
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
test eax, -571234566
xor si, 80
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
or ax, -23697
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
