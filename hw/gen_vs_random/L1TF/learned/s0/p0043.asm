.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
cmovb ax, bx
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
lea rax, qword ptr [rsi + rbx]
cmovs dx, di
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
setp bl
bt edi, 230
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], esi
xor cl, 32
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
xor dl, bl
lea rbx, qword ptr [rcx + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
bt rdi, rsi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 95
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
or rax, rdi
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
