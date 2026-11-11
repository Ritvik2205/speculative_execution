.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 70
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 41
mul bl
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 27
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdi
not cl
sub dil, dl
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
add al, -67 # instrumentation
setz al
mov cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
