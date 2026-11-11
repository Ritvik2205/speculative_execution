.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rsi]
add cl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
xor al, 14
add dl, 43 # instrumentation
lea rbx, qword ptr [rax + rdx]
xor dil, cl
adc rdi, 53
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 65
bts cx, 4
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
setnl sil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 42
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 83
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
