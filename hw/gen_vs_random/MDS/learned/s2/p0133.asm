.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 41
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and dil, dil
xor al, -19
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or dl, -8
bt cx, di
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
xor al, -26
test edx, -372470678
test dl, bl
test cl, 62
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
