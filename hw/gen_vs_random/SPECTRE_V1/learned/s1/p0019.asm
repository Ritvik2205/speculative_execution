.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -1265007362
setno bl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
lea rdx, qword ptr [rsi + rbx]
btr cx, dx
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
dec rcx
btc cx, bx
lea di, qword ptr [rsi + rbx]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
adc al, 86
cmovns rbx, rbx
lea ax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
