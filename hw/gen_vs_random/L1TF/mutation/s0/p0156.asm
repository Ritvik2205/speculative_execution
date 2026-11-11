.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
adc ax, 87
btc dx, di
and si, si
cmovb eax, eax
sub eax, eax
test rdi, rax
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
cmp rax, 16650668
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
cmovnbe rsi, rdi
lea si, qword ptr [rcx + rax]
lea edi, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
