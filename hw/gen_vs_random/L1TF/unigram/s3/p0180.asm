.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
lea edx, qword ptr [rbx + rdi]
cmovp si, di
adc ax, -8436
lea rcx, qword ptr [rbx + rax + 26]
imul cl
inc eax
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 65
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 67
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
lea cx, qword ptr [rbx + rbx + 36]
mul rax
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
