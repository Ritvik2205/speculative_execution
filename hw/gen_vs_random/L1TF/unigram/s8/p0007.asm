.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], eax
adc dl, -12
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 68
add cl, dl
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
add bl, -79 # instrumentation
cmovo si, cx
sbb bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
lea si, qword ptr [rdx + rsi + 21492]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
add dil, 108 # instrumentation
setl dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
