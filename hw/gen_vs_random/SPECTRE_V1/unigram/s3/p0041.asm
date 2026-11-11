.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 20 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 85
and rax, 2134929425
add bl, 70
setp dl
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi]
inc rax
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, cl
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
cmovle rdi, rbx
and dl, cl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
cmovns rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
