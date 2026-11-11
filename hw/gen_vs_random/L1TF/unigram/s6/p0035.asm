.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
test dx, dx
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 92
and si, 29
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
sbb dil, dil
lea rdi, qword ptr [rdx]
sub cx, 41
setb sil
inc rsi
mul rax
cmp dx, 4
cmp ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
