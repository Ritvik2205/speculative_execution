.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 16
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
xor bx, 61
sub bx, 73
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 30
cmovs si, cx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
add dl, -53 # instrumentation
lea rsi, qword ptr [rcx + rdx + 77]
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 91
neg bl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
xor dl, cl
or dl, dl
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
