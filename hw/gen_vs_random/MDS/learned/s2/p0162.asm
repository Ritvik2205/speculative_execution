.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
or dl, -89
or al, cl
and ecx, -104
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
xor bl, cl
xor cl, al
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
xor bx, 54
or cl, -77
test cl, 0
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
