.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 73
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rcx
lea dx, qword ptr [rcx + rdx + 19]
cwde
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
lea ecx, qword ptr [rbx + rbx]
add dl, -17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
adc ecx, ecx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], -19
and rdi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdi]
or dil, dl
or bl, cl
cmp al, al
adc ax, dx
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
