.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
or al, al
lea rax, qword ptr [rbx + rdi + 63]
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
bt rsi, rdx
setnb cl
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
