.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
lea rbx, qword ptr [rcx + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 42
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
cmovl dx, bx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
dec cl
add cl, -71
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
dec sil
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 63
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdi
sub dil, 75
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
