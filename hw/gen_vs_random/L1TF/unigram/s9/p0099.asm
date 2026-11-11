.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cx, 91
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rbx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
bts ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 55
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
lea rdi, qword ptr [rcx + rbx]
add dl, 85 # instrumentation
cmovp ax, ax
cmp rdi, rdi
btc si, si
add rdx, 51
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
setb dl
xor edx, eax
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
