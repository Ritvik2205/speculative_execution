.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23
or sil, 34
add sil, -26 # instrumentation
cmovle rdx, rsi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
adc cl, -19
imul al
add al, 19 # instrumentation
setnz al
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
add dl, -89 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 8
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rcx
jo .bb_0.1
jmp .exit_0
.bb_0.1:
not al
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
