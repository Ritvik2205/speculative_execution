.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 98
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 83
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 20
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test eax, -2032743474
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 29
test bl, -92
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 33
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
