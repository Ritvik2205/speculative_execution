.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
test edx, -372470678
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
or dl, al
xor bx, 48
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
xor bl, -61
and di, 91
xor bl, -102
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
