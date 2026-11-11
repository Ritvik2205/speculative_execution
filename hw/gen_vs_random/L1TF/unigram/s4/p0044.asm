.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov edi, 2036069402
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 41
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rax
add bl, -37 # instrumentation
dec al
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
setno al
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
sbb si, 12
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
