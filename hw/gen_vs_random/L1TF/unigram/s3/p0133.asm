.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
add bl, -15 # instrumentation
cmovl rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 50
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 11
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 50
sbb bl, cl
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
cmp cl, al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
add dl, 33
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx], 43
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
setnbe cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
