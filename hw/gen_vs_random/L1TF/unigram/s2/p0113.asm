.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
cmp di, 45
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -81
xor bl, -5
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 40
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
or al, -57
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
cmovnb rax, rdx
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
xor dx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
