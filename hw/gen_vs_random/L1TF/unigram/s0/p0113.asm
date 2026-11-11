.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
xor al, sil
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 94
inc ebx
lea ax, qword ptr [rsi + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
lea cx, qword ptr [rdx + rbx]
setnb cl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
add cl, 89 # instrumentation
adc al, sil
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
lea ebx, qword ptr [rax + rsi]
add dl, -123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
setnbe al
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
