.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rcx, 38
sub ecx, 16
test dx, 7
sub al, 25
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
btc si, 81
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 85
lea rbx, qword ptr [rcx + rax]
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
inc dl
lea di, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
sub al, 25
add bl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
xchg al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
