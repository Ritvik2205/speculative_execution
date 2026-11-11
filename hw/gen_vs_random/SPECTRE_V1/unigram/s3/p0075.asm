.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
cmovl edx, edx
add edx, 49
setle bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -14
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
sub dl, al
add ax, dx
add dil, 112 # instrumentation
adc dil, dl
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
