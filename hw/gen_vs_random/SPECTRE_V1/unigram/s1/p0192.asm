.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1272979430
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
lea si, qword ptr [rdi + rdi + 98]
adc ax, cx
mov di, 51
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 64
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], 55
cmovb esi, esi
test ecx, 729805876
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, 127 # instrumentation
sets bl
add dl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
