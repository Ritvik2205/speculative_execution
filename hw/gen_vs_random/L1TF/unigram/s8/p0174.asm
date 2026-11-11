.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dil
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
setnz dl
add al, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
lea eax, qword ptr [rdi + rdi + 52]
and rax, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rax]
add cl, dil
or rdi, rdx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
lea ecx, qword ptr [rdx + rbx + 23]
lea edx, qword ptr [rcx + rcx + 63]
lea rbx, qword ptr [rbx + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 94
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 1 # instrumentation
add bl, -9 # instrumentation
cmovs ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
