.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 36 # instrumentation
lea eax, qword ptr [rax + rsi + 83]
and ax, dx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
cmovb di, cx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
add cl, 55 # instrumentation
lea ecx, qword ptr [rdi + rsi + 4]
sets bl
mov edi, 2036069402
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 9
and al, -68
lea ebx, qword ptr [rcx + rax]
sbb di, 80
lea edi, qword ptr [rsi + rdx + 50]
add cl, -97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rsi]
cmovno edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
