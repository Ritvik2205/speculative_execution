.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rbx]
cmovo ebx, edx
test dl, -37
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
btr ebx, 37
sub edx, ebx
test rax, 404297506
sub sil, -99
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], cx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], bx
test cl, 51
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
add cl, 55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
