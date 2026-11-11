.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 84
or cl, cl
and di, 91
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
or al, -61
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
test dil, dil
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
test dl, -95
and cx, -8
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and al, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
