.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
xor bl, al
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
sub sil, -99
sbb dl, cl
test bl, 84
sub cl, 86
add dil, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 92
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
