.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
sub rax, -1628299544
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
movzx ebx, al
lea rdx, qword ptr [rcx + rdx + 18]
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rax + rsi + 72]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
or cx, 15
add cl, 69 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
xor bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
