.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 100
and cl, cl
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
xor dl, 8
bt cx, ax
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
or al, -17
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
test bl, -114
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
