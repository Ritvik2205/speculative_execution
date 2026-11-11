.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 61
add dl, 125 # instrumentation
cmovbe rdi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
cmp al, cl
and rax, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
add dl, 97 # instrumentation
cmovnbe edx, edi
or di, 0b1000000000000000 # instrumentation
bsf cx, di
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
sub ax, 26007
and ax, 26813
setbe dil
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
lea rsi, qword ptr [rbx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
