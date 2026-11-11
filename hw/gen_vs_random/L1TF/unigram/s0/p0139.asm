.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ecx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
dec bl
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 78
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ecx
and cx, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
add al, -49 # instrumentation
setnb sil
sbb ebx, 3
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
lea rdi, qword ptr [rdx + rdx]
xor al, sil
add sil, bl
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
bts rbx, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
