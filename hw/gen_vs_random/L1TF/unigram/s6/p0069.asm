.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 37 # instrumentation
cmovbe bx, di
cmovno rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
xor si, -50
sub cx, di
sbb rsi, 29
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rbx], bx
add dl, 126 # instrumentation
setnb al
setnl al
movzx esi, bl
jmp .bb_0.1
.bb_0.1:
inc edx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
imul eax, ecx, 65
add bl, -79 # instrumentation
cmovo di, ax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
