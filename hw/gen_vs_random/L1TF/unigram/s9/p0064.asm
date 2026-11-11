.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, rcx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 58
add al, 31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 9
lea di, qword ptr [rsi + rbx]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 14
add cl, -94 # instrumentation
setnb dl
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
add bl, 117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 81
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
