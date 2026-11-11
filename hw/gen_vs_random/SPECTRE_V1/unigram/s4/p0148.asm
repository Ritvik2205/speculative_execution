.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 9
add al, -92 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and al, bl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
cmovnp rdx, rsi
cmovno rsi, rdx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
bt rax, 38
movsx ax, dl
and rbx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
cmovl eax, ecx
add dl, 92 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
