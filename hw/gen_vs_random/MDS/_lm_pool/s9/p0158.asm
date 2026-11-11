.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 83
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
xor esi, 62
test edi, -1252846009
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
test bl, dil
xor al, cl
jmp .bb_0.1
.bb_0.1:
and dx, si
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and bl, 68
bt bx, di
and edx, -44
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
