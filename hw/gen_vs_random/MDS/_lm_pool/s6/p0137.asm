.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and ax, 339
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
bt di, si
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
xor al, -26
jmp .bb_0.1
.bb_0.1:
test al, cl
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
or al, -17
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
xor bl, al
test eax, 1287331633
and di, 91
xor cl, -13
xor di, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
