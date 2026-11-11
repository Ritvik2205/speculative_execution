.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
add al, 110 # instrumentation
movzx ax, cl
imul dl
add cl, -9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 53
btr rbx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
imul rcx
test bl, -8
sbb esi, 66
mul cx
movsx dx, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
