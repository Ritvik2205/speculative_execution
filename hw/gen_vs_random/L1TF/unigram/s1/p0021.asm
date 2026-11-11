.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
add bl, -52 # instrumentation
not esi
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
cmp edi, 61
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
cmovb ebx, ebx
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 9
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
add al, 121 # instrumentation
setnb dil
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdi], bx
lea rsi, qword ptr [rax]
xor ebx, -81
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], bx
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
