.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 29 # instrumentation
setnb al
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ecx
add bl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rbx
btr rdx, 61
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 30
bts rax, rbx
or al, dl
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
add cl, -109 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
