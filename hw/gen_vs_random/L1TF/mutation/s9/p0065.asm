.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 1138518729
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
adc ax, 87
cmovb eax, eax
test rdi, rax
lea si, qword ptr [rcx + rax]
btc dx, di
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
sub eax, eax
lea edi, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
cmovnbe rsi, rdi
and si, si
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
