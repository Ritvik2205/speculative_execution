.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or dil, 12
or al, bl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
test edx, -372470678
and cl, dil
btr ecx, eax
bt eax, ecx
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and al, dl
bt cx, di
and cl, -71
and bl, al
xor cl, 55
xor dl, cl
bts edi, 248
and eax, -829294476
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
