.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
and dx, 85
cmp dil, bl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
add bl, -93 # instrumentation
setnb bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 21
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
cwd
add bx, -65
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 94
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
add cl, 36 # instrumentation
sub rbx, rbx
cmp sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
