.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp al
mul dx
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 33
add dl, -121 # instrumentation
cmovnp esi, ecx
add dil, bl
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor edx, ebx
xchg eax, ebx
inc al
adc dil, cl
cmp dil, dl
lea si, qword ptr [rcx + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
add ax, 80
cmovz esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
