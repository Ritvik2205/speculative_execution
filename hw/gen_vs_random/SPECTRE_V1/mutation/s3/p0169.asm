.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
test rsi, -1408527332
sbb eax, 2098460225
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
adc dl, 80
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
add ax, 6980
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
sbb rax, 342397759
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
movsx ecx, cx
xchg dl, dl
adc eax, 56
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
lea ax, qword ptr [rbx + rdx + 32397]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and sil, 111
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
