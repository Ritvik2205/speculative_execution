.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
cmovno rdx, rcx
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
lea rdx, qword ptr [rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 77
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and al, sil
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 18
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rsi]
cmovl rdi, rdi
add dl, -15 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
imul bl
lea rbx, qword ptr [rcx + rbx + 52]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
