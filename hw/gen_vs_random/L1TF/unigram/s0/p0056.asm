.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 69
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and al, cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 17
lea rdi, qword ptr [rcx + rbx]
xchg al, dl
test eax, 1730342416
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 75
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
lea ax, qword ptr [rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], -105
setle dl
and cl, cl
xchg di, cx
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
add dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
