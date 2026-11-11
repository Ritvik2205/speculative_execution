.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
cmovle ecx, edi
imul dl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
lea di, qword ptr [rsi + rbx]
add al, cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 0 # instrumentation
adc dl, bl
test rax, 1469613902
lea rdx, qword ptr [rcx + rdx + 44106]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
or rdi, rcx
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
or al, dl
and ecx, -38
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
