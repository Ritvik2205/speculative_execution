.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
add al, 121 # instrumentation
setnb bl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 85
setnle dl
add ebx, 2
add al, 31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
test al, -32
btc cx, si
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
add rdx, 1
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
