.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
seto al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 14
imul rsi, rsi, 62
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], -90
mul rdi
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
jmp .bb_0.1
.bb_0.1:
add bl, 117 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
add al, -46
setnl dl
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], 34
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
