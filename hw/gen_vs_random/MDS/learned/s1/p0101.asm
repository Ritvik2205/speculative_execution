.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
btr dx, di
and edx, -44
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and al, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
not dl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and edi, 23
or al, dil
test dl, 27
xor cx, -18
or al, -78
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
